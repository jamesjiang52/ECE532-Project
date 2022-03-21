/******************************************************************************
*
* Copyright (C) 2009 - 2017 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

//Standard library includes
#include <stdio.h>
#include <string.h>

//BSP includes for peripherals
#include "xparameters.h"
#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "xil_cache.h"

//LWIP include files
#include "lwip/ip_addr.h"
#include "lwip/tcp.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "lwip/inet.h"
#include "lwip/etharp.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

void lwip_init(); /* missing declaration in lwIP */
struct netif *echo_netif;

//TCP Network Params
#define SRC_MAC_ADDR {0x00, 0x0a, 0x35, 0x00, 0x00, 0x4}
#define SRC_IP4_ADDR "1.1.4.2"
#define IP4_NETMASK "255.255.0.0"
#define IP4_GATEWAY "1.1.0.1"
#define SRC_PORT 50001

#define DEST_IP4_ADDR  "1.1.4.1"
#define DEST_IP6_ADDR "fe80::6600:6aff:fe71:fde6"
#define DEST_PORT 50000

#define TCP_SEND_BUFSIZE 44

//Function prototypes
#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip);
#else
void print_ip(char *msg, ip_addr_t *ip);
void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw);
#endif
int setup_client_conn();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

//Function prototypes for callbacks
static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err);
static err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len);
static void tcp_client_err(void *arg, err_t err);
static void tcp_client_close(struct tcp_pcb *pcb);

//DHCP global variables
#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

//Networking global variables
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *app_netif;
static struct tcp_pcb *c_pcb;
char is_connected;

//hash function variables
volatile unsigned int * hash_base = (unsigned int *) XPAR_HASH_FUNC_TOP_0_BASEADDR;
//volatile unsigned int * hash_data_base = (unsigned int *) XPAR_HASH_FUNC_TOP_0_BASEADDR;
//volatile unsigned int * mem_base = (unsigned int *) XPAR_MIG_7SERIES_0_BASEADDR;

//MAX_CHAR*4 is the num of character that can be hashed
#define MAX_CHAR 9

/*-----------------------------------------------------------------------------*/
char * user_input_data;
int str_length = 0;

char ** word_list = NULL;
int num_words = 0;	//Total number of hash key to send
int num_key_sent = 0;

//TEMP VARs
int num_key_insert = 0;
int num_key_update = 0;
int num_key_delete = 0;
int total_packet_sent = 0;
int total_packet_to_send = 0;

unsigned short * hashkey_list = NULL;

char * get_input(){
	str_length = 1;
	char * char_input;
	char * realloc_temp;
	char user_char;

	char_input = (char *) malloc (sizeof(char));
	if (char_input == NULL){
		xil_printf("ERROR allocating memory\n");
	}

//	xil_printf("inside\n");
	user_char = getchar(); // use getc(stdin)
	while (user_char!='\n' && user_char != 13){
//		xil_printf("loop: %d %c |%d| \n",user_char,user_char,str_length);
		char_input[str_length-1] = user_char;
		str_length++;
		realloc_temp = realloc (char_input,str_length);
		//CHECK allocation error
		if (realloc_temp == NULL){
			xil_printf("ERROR allocating memory\n");
		}
		char_input = realloc_temp;
		user_char = getchar();
	}

//	xil_printf("EXITING\n");
//	char_input[str_length-1] = '\n';
//	realloc_temp = realloc(char_input, str_length+1);
	//CHECK allocation error
//	if (realloc_temp == NULL){
//				xil_printf("ERROR allocating memory\n");
//	}
//	char_input = realloc_temp;

	char_input[str_length-1] = '\0';

	return char_input;
}
/*-----------------------------------------------------------------------------*/

//Function to start hash_key generation
//need to use other function to get the key value from IP core
//before calling this function total num word to process should be sent
void start_hash_key_gen (char * str_ptr, int length){
	//hash_base
	volatile unsigned int * in_data = hash_base+3;

	int num_char_length = length;
	int num_trans_done = 0;
	char * iter_ptr = str_ptr;
	unsigned int data = 0;
	xil_printf("STARTING HASH FUNC\n");

	while ((num_char_length - 4)>0){
		for (int i = 0; i < 4;i++){
			//TODO: MAY HAVE TO CHANGE DIRECTION OF DATA STORAGE DUE TO ENDIANNESS
			//xil_printf("data: %x\n",data);
			data = data << 8;
			data = data ^ (int) *iter_ptr;
			//xil_printf("iter data: %c, %x ",*iter_ptr,*iter_ptr);
			iter_ptr++;
			//xil_printf("trans: %d,i: %d, data:%x, iter: %x\n",num_trans,i,data,iter_ptr);
		}
//		xil_printf("\ndata: %x, %d\n",data,num_char_length);
		num_char_length -= 4;
		//Sending data to hash_func IP
		//*membase = data;
		*in_data = data;
		num_trans_done += 1;
	//	xil_printf("mem: %x\n",in_data);
		in_data += 1;
		data = 0;
	}

	if (num_char_length >0){
		for (int i = 0; i< num_char_length;i++){
			data = data << 8;
			data = data ^ (int) *iter_ptr;
			iter_ptr++;
		}
	//	xil_printf("data: %x\n",data);
		for (int i = 0; i < (4-num_char_length);i++){
			data = data << 8;
		}
//		xil_printf("\nleftOVER: data: %x, %d, addr: %x\n",data,num_char_length,in_data);
		//Sending data to hash_func IP
		*in_data = data;
	//	xil_printf("data: %x\n",data);
		num_trans_done += 1;
	//	xil_printf("mem: %x\n",in_data);
		in_data += 1;
	}

	for (int i =0; i<((int)MAX_CHAR - num_trans_done);i++){
		//Sending data to hash_func IP
		*in_data = 0x00000000;
	//	xil_printf("addr: %x\n",in_data);
		in_data += 1;
	}

	//Sending data to hash_func IP
	xil_printf("len: %d\n",length);
	*(hash_base+12) = length;
	*hash_base = 1;
}



int main()
{
	//Varibales for IP parameters
#if LWIP_IPV6==0
	ip_addr_t ipaddr, netmask, gw;
#endif

	//The mac address of the board. this should be unique per board
	unsigned char mac_ethernet_address[] = SRC_MAC_ADDR;

	//Network interface
	app_netif = &server_netif;

	//Initialize platform
	init_platform();


	/*-----------------------------------------------------------------------------*/
	xil_printf("\n");
	//while(1){
//	fflush(stdin);
	xil_printf("ENTER A PACKET DATA TO SEND: ");
	user_input_data=get_input();
	xil_printf("\nFINISHED INPUT PROCESS\n");
	xil_printf("USER INPUT: <%s> size: %d last: %d\n",user_input_data,str_length,user_input_data[str_length-1]);
	/*-----------------------------------------------------------------------------*/

	//SET num words to hash_base+2

	//start_hash_key_gen (user_input_data, str_length-1);

	/*----------------------------WORD SPLITTER-----------------------------------------*/
	char ** tmp_realloc = NULL;
	char * iter;

	iter = strtok (user_input_data," ");
	while(iter != NULL){
	//	xil_printf(">> addr: %x, %x ::",tmp_realloc,word_list);
		tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
		if (tmp_realloc == NULL){
			xil_printf("ERROR allocating memory\n");
			exit (-1);
		}
	//	xil_printf("addr: %x, %x ::\n",tmp_realloc,word_list);
		word_list = tmp_realloc;
		word_list[num_words] = iter;
		num_words = num_words + 1;
		iter = strtok(NULL, " ");
	}
	tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
	if (tmp_realloc == NULL){
		xil_printf("ERROR allocating memory\n");
		exit (-1);
	}
//	xil_printf("addr: %x, %x ::\n",tmp_realloc,word_list);
	word_list = tmp_realloc;
	word_list[num_words] = '\0';
/*---------------------------------------------------------------------*/
	//Set num words to process
	*(hash_base+2) = num_words;

	//Sending words into hash functions
	for (int i = 0; i < num_words;i++){
		xil_printf("words: %s %d\n",word_list[i],strlen(word_list[i]));
		start_hash_key_gen(word_list[i],strlen(word_list[i]));
	}

	/*----------------------------------------------*/
	// TODO: Probably need to process words before going into TCP set up
	// MAYBE read from hash IP just before sending a packet
	//char ** hashkey_list

	//char ** tmp = NULL;
	//int iter_hash;
	unsigned int * hash_ctrl = hash_base+13;

	hashkey_list = (unsigned short *)malloc (sizeof(unsigned short)*num_words);
	if (hashkey_list == NULL){
		xil_printf ("ERROR allocating memory\n");
		exit (-1);
	}

	for (int i = 0; i < num_words;i++){
		//hashkey_list[i] = (unsigned short) malloc (sizeof (unsigned short));
		//if (hashkey_list[i]== NULL){
		//	xil_printf("ERROR allocating memory\n");
		//	exit(-1);
		//}
		while ((*hash_ctrl & 1) == 0 );
		hashkey_list[i] = *(hash_ctrl+1);
		xil_printf("copying - ");
		xil_printf("HASH ctrl: %x, ",*(hash_base+13));
		xil_printf("HASH KEY: %x\n",hashkey_list[i]);
		*hash_ctrl = 0;
	}

	//TODO: EDIT TOTAL PACKAGE TO SEND
	total_packet_to_send = num_words*3+1+1;



	//xil_printf("TEST: %x %x",(hashkey_list[0] >> 8) & 0xFF, hashkey_list[0] & 0xFF);
	/*
	xil_printf("HASH KEY OUTPUTS: \n");
	xil_printf("HASH ctrl: %x\n",*(hash_base+13));
	while((*(hash_base+13) & 1)==0);

	xil_printf("HASH ctrl: %x\n",*(hash_base+13));
	xil_printf("HASH KEY: %x\n",*(hash_base+14));
	*(hash_base+13) = 0;
	while((*(hash_base+13) & 1)==0);
	xil_printf("HASH ctrl: %x\n",*(hash_base+13));
	xil_printf("HASH KEY: %x\n",*(hash_base+14));
	*(hash_base+13) = 0;
	xil_printf("HASH ctrl: %x\n",*(hash_base+13));

	while((*(hash_base+13) & 1)==0);

	xil_printf("HASH KEY: %x\n",*(hash_base+14));
	*(hash_base+13) = 0;
	xil_printf("HASH ctrl: %x\n",*(hash_base+13));
	*/
	xil_printf("--------------------------------\n");
	xil_printf("Done Processing Data\n");
	xil_printf("--------------------------------\n");

	//Defualt IP parameter values
#if LWIP_IPV6==0
#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	(void)inet_aton(SRC_IP4_ADDR, &ipaddr);
	(void)inet_aton(IP4_NETMASK, &netmask);
	(void)inet_aton(IP4_GATEWAY, &gw);
#endif
#endif

	//LWIP initialization
	lwip_init();


	//Setup Network interface and add to netif_list
#if (LWIP_IPV6 == 0)
	if (!xemac_add(app_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n");
		return -1;
	}
#else
	if (!xemac_add(app_netif, NULL, NULL, NULL, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n");
		return -1;
	}
	app_netif->ip6_autoconfig_enabled = 1;

	netif_create_ip6_linklocal_address(app_netif, 1);
	netif_ip6_addr_set_state(app_netif, 0, IP6_ADDR_VALID);

#endif
	netif_set_default(app_netif);

	//Now enable interrupts
	platform_enable_interrupts();

	//Specify that the network is up
	netif_set_up(app_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */


	dhcp_start(app_netif);
	dhcp_timoutcntr = 24;

	while(((app_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(app_netif);

	if (dhcp_timoutcntr <= 0) {
		if ((app_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\n");
			xil_printf("Configuring default IP of %s\n", SRC_IP4_ADDR);
			(void)inet_aton(SRC_IP4_ADDR, &(app_netif->ip_addr));
			(void)inet_aton(IP4_NETMASK, &(app_netif->netmask));
			(void)inet_aton(IP4_GATEWAY, &(app_netif->gw));
		}
	}

	ipaddr.addr = app_netif->ip_addr.addr;
	gw.addr = app_netif->gw.addr;
	netmask.addr = app_netif->netmask.addr;
#endif
#endif

	//Print connection settings
#if (LWIP_IPV6 == 0)
	print_ip_settings(&ipaddr, &netmask, &gw);
#else
	print_ip6("Board IPv6 address ", &app_netif->ip6_addr[0].u_addr.ip6);
#endif

	//Gratuitous ARP to announce MAC/IP address to network
	etharp_gratuitous(app_netif);

	//Setup connection
	setup_client_conn();

	//Event loop
	while (1) {
		//Call tcp_tmr functions
		//Must be called regularly
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}

		//Process data queued after interupt
		xemacif_input(app_netif);



		//ADD CODE HERE to be repeated constantly
		// Note - should be non-blocking
		// Note - can check is_connected global var to see if connection open


		//END OF ADDED CODE


	}



	//Never reached
	cleanup_platform();

	return 0;
}


#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n",
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
void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif


int setup_client_conn()
{
	struct tcp_pcb *pcb;
	err_t err;
	ip_addr_t remote_addr;

	xil_printf("Setting up client connection\n");

#if LWIP_IPV6==1
	remote_addr.type = IPADDR_TYPE_V6;
	err = inet6_aton(DEST_IP6_ADDR, &remote_addr);
#else
	err = inet_aton(DEST_IP4_ADDR, &remote_addr);
#endif

	if (!err) {
		xil_printf("Invalid Server IP address: %d\n", err);
		return -1;
	}

	//Create new TCP PCB structure
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n");
		return -1;
	}

	//Bind to specified @port
	err = tcp_bind(pcb, IP_ANY_TYPE, SRC_PORT);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n", SRC_PORT, err);
		return -2;
	}

	//Connect to remote server (with callback on connection established)
	err = tcp_connect(pcb, &remote_addr, DEST_PORT, tcp_client_connected);
	if (err) {
		xil_printf("Error on tcp_connect: %d\n", err);
		tcp_client_close(pcb);
		return -1;
	}

	is_connected = 0;

	xil_printf(">> Waiting for server to accept connection\n");

	return 0;
}

static void tcp_client_close(struct tcp_pcb *pcb)
{
	err_t err;

	xil_printf("Closing Client Connection\n");

	if (pcb != NULL) {
		tcp_sent(pcb, NULL);
		tcp_recv(pcb,NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
	}
}

static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n");
		return err;
	}
	xil_printf("********************************************\n");
	xil_printf("Connection to server established\n");
	xil_printf("********************************************\n");
	//Store state (for callbacks)
	c_pcb = tpcb;
	is_connected = 1;

	//Set callback values & functions
	tcp_arg(c_pcb, NULL);
	tcp_recv(c_pcb, tcp_client_recv);
	tcp_sent(c_pcb, tcp_client_sent);
	tcp_err(c_pcb, tcp_client_err);



	//ADD CODE HERE to do when connection established

	//Just send a single packet
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE; //TODO: modify this flag
	char send_buf[TCP_SEND_BUFSIZE];
	//u32_t i;

	strcpy (send_buf, "<<<<<<<Starting packet transfer soon>>>>>>>");

	send_buf[TCP_SEND_BUFSIZE-1] = '\n';

	//Loop until enough room in buffer (should be right away)
	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);

	//Enqueue some data to send
	err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_write: %d\n", err);
		return err;
	}

	//send the data packet
	err = tcp_output(c_pcb);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_output: %d\n",err);
		return err;
	}

	xil_printf("Packet data sent\n");
	xil_printf("*****************************************\n");
	//END OF ADDED CODE



	return ERR_OK;
}

static err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
	//If no data, connection closed
	if (!p) {
		xil_printf("No data received\n");
		tcp_client_close(tpcb);
		return ERR_OK;
	}


	u32_t i;
	//ADD CODE HERE to do on packet reception
	xil_printf("........................................................................\n");
	//Print message
	xil_printf("Packet received, %d bytes\n", p->tot_len);

	//Print packet contents to terminal
	char* packet_data = (char*) malloc(p->tot_len);

	u8_t * buffer_data = p->payload;
	if (buffer_data[0] == 0){
		//TODO: add total sum depending on the validity of the data
		//but for now I'm display the data result here
		xil_printf("VALID DATA SET (hex): ");
		for (i = 0;i<8;i++){
			xil_printf(" %02x",(unsigned char)buffer_data[35+i]);
		}
		xil_printf("\n");
	}
	else if (buffer_data[0] == 1){
		xil_printf("____________Packet ACKNOWLEDGED_______________\n");
	}

	pbuf_copy_partial(p, packet_data, p->tot_len, 0); //Note - inefficient way to access packet data


//	for(i = 0; i < p->tot_len; i = i + 1){
//		putchar(packet_data[i]);
//	}
	xil_printf("IN HEX: ");
	for(i = 0; i < p->tot_len; i = i + 1){
		xil_printf(" %02x",(unsigned char)packet_data[i]);
	}
	xil_printf("\n");



	//END OF ADDED CODE
	xil_printf("........................................................................\n");


	//Indicate done processing
	tcp_recved(tpcb, p->tot_len);

	//Free the received pbuf
	pbuf_free(p);

	return 0;
}

static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
{


	//ADD CODE HERE to do on packet acknowledged

	//Print message
	xil_printf("Packet sent successfully, %d bytes\n", len);
	xil_printf("------------------------------------------\n");
	u8_t apiflags = TCP_WRITE_FLAG_COPY; //| TCP_WRITE_FLAG_MORE;
	u8_t send_buf[TCP_SEND_BUFSIZE];

	err_t err; //MAYBE DELETE THIS and use different method?
	u32_t i;
//-----------------------------------------------------------------------
	//
	//int num_key_insert = 0;
	//int num_key_update = 0;
	//int total_packet_sent = 0;
	//total_packet_to_send = num_words*2+1+1+1;

	/*//use it for inserting key with 0 word data
	if (num_key_insert < num_words){
					send_buf[0] = 0x01;
					send_buf[1] = (hashkey_list[num_key_update] >> 8) & 0xFF;
					send_buf[2] = hashkey_list[num_key_update] & 0xFF;

					for (i = 0; i < 32 ;i++){
						send_buf[3+i] = 0x00;
					}
					for(i = 0;i<5;i++){
						send_buf[35+i] = 0x00;
					}
					send_buf[40] = 0x61;
					send_buf[41] = 0xff & num_key_update;
					send_buf[42] = 0xff & num_key_update;

					send_buf[TCP_SEND_BUFSIZE-1] = '\n';

					xil_printf("PRINT SENDING DATA:\n");
					for (i = 0; i<TCP_SEND_BUFSIZE;i++){
							xil_printf(" %02x",send_buf[i]);
					}
					xil_printf("\n");

					//send_buf[TCP_SEND_BUFSIZE-1] = '\n';

					//Loop until enough room in buffer (should be right away)
					while (tcp_sndbuf(tpcb) < TCP_SEND_BUFSIZE);

					//Enqueue some data to send
					err = tcp_write(tpcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
					if (err != ERR_OK) {
						xil_printf("TCP client: Error on tcp_write: %d\n", err);
						return err;
					}
					num_key_update++;
					xil_printf("Packet insert request data sent\n");
					xil_printf("------------------------------------------\n");
				}
	*/


	if (total_packet_sent < total_packet_to_send){

		//Insert the value into keys
	if (total_packet_sent < num_words){
		//TODO: make below into a function
		if (num_key_update < num_words){
				send_buf[0] = 0x01;
				send_buf[1] = (hashkey_list[num_key_update] >> 8) & 0xFF;
				send_buf[2] = hashkey_list[num_key_update] & 0xFF;

				for (i = 0;i < strlen(word_list[num_key_update]);i++){
					send_buf[3+i] = word_list[num_key_update][i];
				}
				for (i = strlen(word_list[num_key_update]); i < 32 ;i++){
					send_buf[3+i] = 0x00;
				}
				for(i = 0;i<5;i++){
					send_buf[35+i] = 0x00;
				}
				send_buf[40] = 0x61;
				send_buf[41] = 0xff & num_key_update;
				send_buf[42] = 0xff & num_key_update;

				send_buf[TCP_SEND_BUFSIZE-1] = '\n';

				xil_printf("PRINT SENDING DATA:\n");
				for (i = 0; i<TCP_SEND_BUFSIZE;i++){
						xil_printf(" %02x",send_buf[i]);
				}
				xil_printf("\n");

				//send_buf[TCP_SEND_BUFSIZE-1] = '\n';

				//Loop until enough room in buffer (should be right away)
				while (tcp_sndbuf(tpcb) < TCP_SEND_BUFSIZE);

				//Enqueue some data to send
				err = tcp_write(tpcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
				if (err != ERR_OK) {
					xil_printf("TCP client: Error on tcp_write: %d\n", err);
					return err;
				}
				num_key_update++;
				xil_printf("Packet insert request data sent\n");
				xil_printf("------------------------------------------\n");
			}


		//READ the values from the key location
	}else if( total_packet_sent >= num_words && total_packet_sent < num_words*2){

	if (num_key_sent < num_words){
		send_buf[0] = 0x00;
		send_buf[1] = (hashkey_list[num_key_sent] >> 8) & 0xFF;
		send_buf[2] = hashkey_list[num_key_sent] & 0xFF;

		for (i = 0;i < strlen(word_list[num_key_sent]);i++){
			send_buf[3+i] = word_list[num_key_sent][i];
		}
		for (i = strlen(word_list[num_key_sent]); i < 32 ;i++){
			send_buf[3+i] = 0x00;
		}
		for(i = 0;i<8;i++){
			send_buf[35+i] = 0x00;
		}

		send_buf[TCP_SEND_BUFSIZE-1] = '\n';

		xil_printf("PRINT SENDING DATA:\n");
		for (i = 0; i<TCP_SEND_BUFSIZE;i++){
				xil_printf(" %02x",send_buf[i]);
		}
		xil_printf("\n");

		//send_buf[TCP_SEND_BUFSIZE-1] = '\n';

		//Loop until enough room in buffer (should be right away)
		while (tcp_sndbuf(tpcb) < TCP_SEND_BUFSIZE);

		//Enqueue some data to send
		err = tcp_write(tpcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\n", err);
			return err;
		}

	//send the data packet
	/*
	xil_printf("SENDING-tcp_output\n");
	err = tcp_output(tpcb);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_output: %d\n",err);
		return err;
	}
*/
		num_key_sent++;
		xil_printf("Packet read request data sent\n");
		xil_printf("------------------------------------------\n");
	}
	}
	else if (total_packet_sent == (num_words*2)){
				send_buf[0] = 0x02;
				send_buf[1] = (hashkey_list[num_words-1] >> 8) & 0xFF;
				send_buf[2] = hashkey_list[num_words-1] & 0xFF;

				for (i = 0;i < strlen(word_list[num_words-1]);i++){
					send_buf[3+i] = word_list[num_words-1][i];
				}
				for (i = strlen(word_list[num_words-1]); i < 32 ;i++){
					send_buf[3+i] = 0x00;
				}
				for(i = 0;i<8;i++){
					send_buf[35+i] = 0x77;
				}

				send_buf[TCP_SEND_BUFSIZE-1] = '\n';

				xil_printf("PRINT SENDING DATA:\n");
				for (i = 0; i<TCP_SEND_BUFSIZE;i++){
						xil_printf(" %02x",send_buf[i]);
				}
				xil_printf("\n");

				//send_buf[TCP_SEND_BUFSIZE-1] = '\n';

				//Loop until enough room in buffer (should be right away)
				while (tcp_sndbuf(tpcb) < TCP_SEND_BUFSIZE);

				//Enqueue some data to send
				err = tcp_write(tpcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
				if (err != ERR_OK) {
					xil_printf("TCP client: Error on tcp_write: %d\n", err);
					return err;
				}

				xil_printf("Packet update request data sent\n");
				xil_printf("------------------------------------------\n");

	}else if (total_packet_sent == (num_words*2+1)){
		send_buf[0] = 0x00;
		send_buf[1] = (hashkey_list[num_words-1] >> 8) & 0xFF;
		send_buf[2] = hashkey_list[num_words-1] & 0xFF;

		for (i = 0;i < strlen(word_list[num_words-1]);i++){
			send_buf[3+i] = word_list[num_words-1][i];
		}
		for (i = strlen(word_list[num_words-1]); i < 32 ;i++){
			send_buf[3+i] = 0x00;
		}
		for(i = 0;i<8;i++){
			send_buf[35+i] = 0x70;
		}

		send_buf[TCP_SEND_BUFSIZE-1] = '\n';

		xil_printf("PRINT SENDING DATA:\n");
		for (i = 0; i<TCP_SEND_BUFSIZE;i++){
			xil_printf(" %02x",send_buf[i]);
		}
		xil_printf("\n");

						//send_buf[TCP_SEND_BUFSIZE-1] = '\n';

			//Loop until enough room in buffer (should be right away)
		while (tcp_sndbuf(tpcb) < TCP_SEND_BUFSIZE);

						//Enqueue some data to send
		err = tcp_write(tpcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\n", err);
			return err;
		}

		xil_printf("Packet read request data sent\n");
		xil_printf("------------------------------------------\n");

	}else if (total_packet_sent > (num_words*2+1) && total_packet_sent <= (num_words*3+1)){
		if (num_key_delete < num_words){
				send_buf[0] = 0x03;
				send_buf[1] = (hashkey_list[num_key_delete] >> 8) & 0xFF;
				send_buf[2] = hashkey_list[num_key_delete] & 0xFF;

				for (i = 0;i < strlen(word_list[num_key_delete]);i++){
					send_buf[3+i] = word_list[num_key_delete][i];
				}
				for (i = strlen(word_list[num_key_delete]); i < 32 ;i++){
					send_buf[3+i] = 0x00;
				}
				for(i = 0;i<8;i++){
					send_buf[35+i] = 0x00;
				}

				send_buf[TCP_SEND_BUFSIZE-1] = '\n';

				xil_printf("PRINT SENDING DATA:\n");
				for (i = 0; i<TCP_SEND_BUFSIZE;i++){
					xil_printf(" %02x",send_buf[i]);
				}
				xil_printf("\n");

								//send_buf[TCP_SEND_BUFSIZE-1] = '\n';

					//Loop until enough room in buffer (should be right away)
				while (tcp_sndbuf(tpcb) < TCP_SEND_BUFSIZE);

								//Enqueue some data to send
				err = tcp_write(tpcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
				if (err != ERR_OK) {
					xil_printf("TCP client: Error on tcp_write: %d\n", err);
					return err;
				}
				num_key_delete++;
				xil_printf("Packet delete request data sent\n");
				xil_printf("------------------------------------------\n");
		}
	}

	total_packet_sent++;

	}
	//END OF ADDED CODE

	return 0;
}

static void tcp_client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	tcp_client_close(c_pcb);
	c_pcb = NULL;
	xil_printf("TCP connection aborted\n");
}
