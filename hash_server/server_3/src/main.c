/*
 * Copyright (C) 2009 - 2018 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <string.h>

#include "xparameters.h"

#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xil_cache.h"
#include "lwip/ip_addr.h"
#include "lwip/inet.h"
#include "lwip/etharp.h"

#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

volatile unsigned int *hash_table_mgr_base = (unsigned int *)XPAR_HASH_TABLE_MGR_0_S00_AXI_BASEADDR;
volatile unsigned int *reset_gpio = XPAR_AXI_GPIO_0_BASEADDR;
struct tcp_pcb *g_pcb0 = NULL;
struct tcp_pcb *g_pcb1 = NULL;
struct tcp_pcb *g_pcb_gui = NULL;

/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));

}
#else
void
print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

int main()
{
#if LWIP_IPV6==0
	ip_addr_t ipaddr, netmask, gw;

#endif
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x00, 0x26 };

	echo_netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

/* Define this board specific macro in order perform PHY reset on ZCU102 */
#ifdef XPS_BOARD_ZCU102
	if(IicPhyReset()) {
		xil_printf("Error performing PHY reset \n\r");
		return -1;
	}
#endif

	init_platform();
    *reset_gpio = 0;
    *reset_gpio = 1;
    while (*(reset_gpio+2) == 0) ;

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initliaze IP addresses to be used */
	IP4_ADDR(&ipaddr,  1, 1,   26, 2);
	IP4_ADDR(&netmask, 255, 255, 0,  0);
	IP4_ADDR(&gw,      1, 1,   26,  0);
#endif
#endif
	print_app_header();

	lwip_init();

#if (LWIP_IPV6 == 0)
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
#else
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, NULL, NULL, NULL, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	echo_netif->ip6_autoconfig_enabled = 1;

	netif_create_ip6_linklocal_address(echo_netif, 1);
	netif_ip6_addr_set_state(echo_netif, 0, IP6_ADDR_VALID);

	print_ip6("\n\rBoard IPv6 address ", &echo_netif->ip6_addr[0].u_addr.ip6);

#endif
	netif_set_default(echo_netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(echo_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0) {
		if ((echo_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 1.1.26.2\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  1, 1,   26, 2);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 0,  0);
			IP4_ADDR(&(echo_netif->gw),      1, 1,   26,  0);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);

#endif
	/* start the application (web server, rxtest, txtest, etc..) */
	start_application();
	*(hash_table_mgr_base + 16) = 0;

	/* receive and process packets */
	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(echo_netif);

	    if ((*(hash_table_mgr_base + 16) == 1) && (g_pcb0 != NULL || g_pcb1 != NULL)) {
			char buf_gui[2];
			buf_gui[0] = 0x01;
			buf_gui[1] = 0x00;
			xil_printf("Sending opcode 1 to GUI\n\n");
			while (tcp_sndbuf(g_pcb_gui) < 2) ;
			tcp_write(g_pcb_gui, buf_gui, 2, 1);
			
	    	int client = *(hash_table_mgr_base + 29);
	    	unsigned char buf[43];

	    	buf[0] = (unsigned char)(*(hash_table_mgr_base + 18));
	    	buf[1] = (unsigned char)((*(hash_table_mgr_base + 17) >> 8) & 0xFF);
	    	buf[2] = (unsigned char)(*(hash_table_mgr_base + 17) & 0xFF);

	    	for (int i = 0; i < 32; i++)
	    		buf[i + 3] = (unsigned char)(*(hash_table_mgr_base + 21 + i/4) >> ((i % 4)*8));

	    	for (int i = 0; i < 8; i++)
	    		buf[i + 35] = (unsigned char)(*(hash_table_mgr_base + 19 + i/4) >> ((i % 4)*8));

	        xil_printf("Sending response to client %d:\n\tType: %d\n\tAddress: 0x%2X%2X\n\tKey: ", client, buf[0], buf[1] & 0xFF, buf[2] & 0xFF);
	        for (int i = 0; i < 32; i++)
	        	xil_printf("%c", buf[i + 3]);
	        xil_printf("\n\tData: ");
	        for (int i = 0; i < 8; i++)
	        	xil_printf("%02x", buf[i + 35]);
	        xil_printf("\n\n");

			buf_gui[0] = 0x02;
			buf_gui[1] = (client == 0) ? 0x00 : 0x01;
			xil_printf("Sending opcode 2 to GUI\n\n");
			while (tcp_sndbuf(g_pcb_gui) < 2) ;
			tcp_write(g_pcb_gui, buf_gui, 2, 1);

	        if (client == 0 && g_pcb0) {
	        	while (tcp_sndbuf(g_pcb0) < 43) ;
	        	tcp_write(g_pcb0, buf, 43, 1);
	        } else if (client == 1 && g_pcb1) {
	        	while (tcp_sndbuf(g_pcb1) < 43) ;
	        	tcp_write(g_pcb1, buf, 43, 1);
	        }

	    	*(hash_table_mgr_base + 16) = 0;
	    }
	}

	/* never reached */
	cleanup_platform();

	return 0;
}

void print_app_header()
{
#if (LWIP_IPV6==0)
	xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
#else
	xil_printf("\n\r\n\r-----lwIPv6 TCP echo server ------\n\r");
#endif
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	int client = (tpcb == g_pcb0) ? 0 : 1;
	unsigned char *load = (unsigned char *)p->payload;

	unsigned int op = (unsigned int)load[0];
	if (op == 0 || op == 1 || op == 2 || op == 3) {

    unsigned int addr = ((unsigned int)load[2] & 0xFF) | (((unsigned int)load[1] << 8) & 0xFF00);

    unsigned int key[8] = {0};
    for (int i = 0; i < 32; i++)
        key[i/4] |= (((unsigned int)load[i + 3] & 0xFF) << ((i % 4)*8));

    unsigned int data[2] = {0};
    for (int i = 0; i < 8; i++)
        data[i/4] |= (((unsigned int)load[i + 35] & 0xFF) << ((i % 4)*8));

    xil_printf("Received request from client %d:\n\tOperation: %d\n\tAddress: 0x%2X%2X\n\tKey: ", client, load[0], load[1] & 0xFF, load[2] & 0xFF);
    for (int i = 0; i < 32; i++)
    	xil_printf("%c", load[i + 3]);
    xil_printf("\n\tData: ");
    for (int i = 0; i < 8; i++)
    	xil_printf("%02x", load[i + 35]);
    xil_printf("\n\n");

    *(hash_table_mgr_base + 1) = addr;
    *(hash_table_mgr_base + 2) = op;
    *(hash_table_mgr_base + 3) = data[0];
    *(hash_table_mgr_base + 4) = data[1];
    *(hash_table_mgr_base + 5) = key[0];
    *(hash_table_mgr_base + 6) = key[1];
    *(hash_table_mgr_base + 7) = key[2];
    *(hash_table_mgr_base + 8) = key[3];
    *(hash_table_mgr_base + 9) = key[4];
    *(hash_table_mgr_base + 10) = key[5];
    *(hash_table_mgr_base + 11) = key[6];
    *(hash_table_mgr_base + 12) = key[7];
    *(hash_table_mgr_base + 13) = client;
	
	char buf_gui[2] = {0x00, 0x00};
	xil_printf("Sending opcode 0 to GUI\n\n");
	while (tcp_sndbuf(g_pcb_gui) < 2) ;
	tcp_write(g_pcb_gui, buf_gui, 2, 1);
	
    *(hash_table_mgr_base + 0) = 1;
	}  // if (op == 0 || op == 1 || op == 2 || op == 3)

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

	/* free the received pbuf */
	pbuf_free(p);

	return ERR_OK;
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	static int connection = 1;

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);

	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(newpcb, (void*)(UINTPTR)connection);

	if (g_pcb0 == NULL)
		g_pcb0 = newpcb;
	else if (g_pcb1 == NULL)
		g_pcb1 = newpcb;
	else
		xil_printf("Can't accept new connection\n");

	/* increment for subsequent accepted connections */
	connection++;

	return ERR_OK;
}

static err_t gui_connect_callback(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	xil_printf("Connection to GUI established\n");
	g_pcb_gui = tpcb;

	return ERR_OK;
}

int start_application()
{
	struct tcp_pcb *pcb0;
	struct tcp_pcb *pcb1;
	struct tcp_pcb *pcb_gui;
	unsigned port0 = 50000;
	unsigned port1 = 50001;
	unsigned port_gui = 50002;
	err_t err;

	///////////////////////////////// Client 0 /////////////////////////////////
	/* create new TCP PCB structure */
	pcb0 = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb0) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb0, IP_ANY_TYPE, port0);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port0, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb0, NULL);

	/* listen for connections */
	pcb0 = tcp_listen(pcb0);
	if (!pcb0) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb0, accept_callback);

	xil_printf("TCP echo server started @ port %d\n\r", port0);

	///////////////////////////////// Client 1 /////////////////////////////////
	/* create new TCP PCB structure */
	pcb1 = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb1) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb1, IP_ANY_TYPE, port1);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port1, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb1, NULL);

	/* listen for connections */
	pcb1 = tcp_listen(pcb1);
	if (!pcb1) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb1, accept_callback);

	xil_printf("TCP echo server started @ port %d\n\r", port1);

	///////////////////////////////// GUI /////////////////////////////////
	ip_addr_t remote_addr;

	xil_printf("Setting up GUI connection\n");

#if LWIP_IPV6==1
	remote_addr.type = IPADDR_TYPE_V6;
	err = inet6_aton("fe80::6600:6aff:fe71:fde6", &remote_addr);
#else
	err = inet_aton("1.1.26.1", &remote_addr);
#endif

	if (!err) {
		xil_printf("Invalid Server IP address: %d\n", err);
		return -1;
	}

	//Create new TCP PCB structure
	pcb_gui = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb_gui) {
		xil_printf("Error creating PCB. Out of Memory\n");
		return -1;
	}

	//Bind to specified @port
	err = tcp_bind(pcb_gui, IP_ANY_TYPE, port_gui);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n", port_gui, err);
		return -2;
	}

	//Connect to remote server (with callback on connection established)
	err = tcp_connect(pcb_gui, &remote_addr, 50007, gui_connect_callback);
	if (err) {
		xil_printf("Error on tcp_connect: %d\n", err);
		return -1;
	}

	xil_printf("Waiting for GUI to accept connection\n");

	return 0;
}
