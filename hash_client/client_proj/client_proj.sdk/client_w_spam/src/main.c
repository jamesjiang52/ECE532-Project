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
#include <math.h>


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
#define SRC_MAC_ADDR {0x00, 0x0a, 0x35, 0x00, 0x00, 0x05}
#define SRC_IP4_ADDR "1.1.5.2"
#define IP4_NETMASK "255.255.0.0"
#define IP4_GATEWAY "1.1.0.1"
#define SRC_PORT 50001

#define DEST_IP4_ADDR  "1.1.26.2"
#define DEST_IP6_ADDR "fe80::6600:6aff:fe71:fde6"
#define DEST_PORT 50000

#define GUI_SRC_PORT 50002
#define GUI_DEST_IP4_ADDR "1.1.26.1"
#define GUI_DEST_PORT 50008


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

int tcp_network_setup();

//GUI TCP
static struct tcp_pcb *gui_pcb;
char is_gui_connected;

int gui_setup_client_conn();
static err_t gui_tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err);
static err_t gui_tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len);
static void gui_tcp_client_err(void *arg, err_t err);


//hash function variables
unsigned int * hash_base = (unsigned int *) XPAR_HASH_FUNC_TOP_0_BASEADDR;
unsigned int * spam_detect_ip = (unsigned int *)XPAR_SPAM_DETECTION_INFER_0_S00_AXI_BASEADDR;


//MAX_CHAR*4 is the num of character that can be hashed
#define MAX_CHAR 9

/*-----------------------------------------------------------------------------*/
int packet_sent = 0;
int gui_packet_sent = 0;
int gui_packet_send = 0;
char user_string[1024];
char * user_input_data;
char email[1024] =
//		"let s face it age should be nothing more than a number it s okay to want to hold on to your young body as long as you can \
		with increasing longevity for an increasing segment of the population this is the frontier for the new millennium \
		dr virgil howard view more about a new lifespan enhancement press here spring special offer \
		i do not have marks please no more although the approach to the management of patients with and without \
		neutropenia is separated in clinical practice this similarity supports a \
		biological basis underlying our results perhaps in time but that time hasn t arrived yet"; //spam
//		"Subject: re : tuesday , december 26 th mary since i will be on call i ' ll be in here ."; //ham
"Subject quality meds at discount prices \
muscle relaxants allergies sleeping disorders men health pain relief \
wt loss depression anxiety and quit smoking drugs at low pricing are \
available through our internet store \
a wide selection for your medical needs \
deal on meds with rx at no charrge to you \
appointment far away if only you are with us \
just try this and pay less on meds \
i find a lot of things in site with no need to pay , like consultation or \
prescription . your guys get one more loyal customer from now on your loyal";


int str_length = 0;

char ** word_list = NULL;
int num_words = 0;	//Total number of hash key to send

int num_packet_sent = 0;
int num_packet_received = 0;
int total_packet_to_send = 0;	
int total_packet_to_receive = 0;

double spam_joint = 0;
double ham_joint = 0;


int num_key_sent = 0;
//TEMP VARs
int num_key_insert = 0;
int num_key_update = 0;
int num_key_delete = 0;
int total_packet_sent = 0;


unsigned short * hashkey_list = NULL;
char * get_input();

/*-----------------------------------------------------------------------------*/
//Function to start hash_key generation
//need to use other function to get the key value from IP core
//before calling this function total num word to process should be sent
void start_hash_key_gen (char * str_ptr, int length);

void hash_key_n_word_set_up();
void hash_key_n_word_set_up_w_tcp();
void hash_key_n_word_set_up_mem_email();

void packet_gen(u8_t * send_buf, unsigned char op_code, float data1, float data2);
void packet_gen_insert(u8_t * send_buf, unsigned char op_code);
void print_menu();

err_t tcp_send_packet(unsigned char *send_buf);

err_t gui_tcp_send_packet(unsigned char *send_buf,int size);

void free_allocated_mem();

int main()
{
	u8_t send_buf[TCP_SEND_BUFSIZE];
	u8_t * buf_iter;
	float spam_val = 0;
	char * spam_val_char = NULL;
	float ham_val = 0;
	char * ham_val_char = NULL;

	unsigned char gui_resp[2];
	gui_resp[0] = 0x04;
	gui_resp[1] = 0x00;

	//Initialize platform
	init_platform();

	//Now enable interrupts
			platform_enable_interrupts();
	//set up tcp network
	if (tcp_network_setup() < 0){
		return -1;
	}
	//Gratuitous ARP to announce MAC/IP address to network
	etharp_gratuitous(app_netif);

	char * user_cmd;
	xil_printf("\n\nStarting SPAM email Detection Process\n");

	while(strcmp(user_cmd,"quit")!=0){
		print_menu();
		user_cmd = get_input();
		if (strcmp(user_cmd,"start")== 0 ){
			xil_printf("SENDING EMAIL CONTENT BELOW:\n");
			xil_printf("%s\n",email);

			spam_joint = 0;
			ham_joint = 0;
			unsigned char gui_packet_email[2];
			gui_packet_email[0]= 0x01;
			gui_packet_email[1]= 0x00;
			gui_setup_client_conn();

			while(is_gui_connected == 0){
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
			}

			if (is_gui_connected){
			if (gui_tcp_send_packet(gui_packet_email,2)!= 0){
				xil_printf("ERROR GUI TCP SENDING\n");
				exit(-1);
			}
			}

			hash_key_n_word_set_up_mem_email();

			gui_packet_email[0]= 0x05;
			gui_packet_email[1]=num_words & 0xFF;

			if(is_gui_connected){
			if (gui_tcp_send_packet(gui_packet_email,2)!= 0 ){
				xil_printf("ERROR GUI TCP SENDING\n");
				exit(-1);
			}
			}
			gui_packet_email[0]= 0x04;
			gui_packet_email[1]= 0x00;

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

				//TODO: CHECK IF THE PACKETS ARE CORRECTLY BEING SENT OVER TO THE SERVER
				//Sending packets to server
				if (is_connected && (num_packet_sent < total_packet_to_send)){
					packet_gen(send_buf, 0x00, 0, 0);
					if (tcp_send_packet(send_buf) != 0){
						xil_printf("ERROR TCP SENDING\n");
						exit(-1);
					}
					xil_printf("END LOOP\n");
				}
				if (gui_packet_send == 1 && is_gui_connected){
					if (gui_tcp_send_packet(gui_packet_email,2)!= 0){
						xil_printf("ERROR GUI TCP SENDING\n");
						exit(-1);
					}
					xil_printf("inside:%d %d %d\n",gui_packet_send,total_packet_to_send,num_packet_received);
				}

				if (num_packet_received == total_packet_to_send){
					break;
				}
			}

			if (is_gui_connected){
				if (gui_tcp_send_packet(user_string,strlen(user_string))!= 0){
					xil_printf("ERROR GUI TCP SENDING\n");
					exit(-1);
				}
			}
			gui_packet_email[0] = 0x03;

			spam_detect_ip = (unsigned int *)XPAR_SPAM_DETECTION_INFER_0_S00_AXI_BASEADDR;
			//spam detection
			*(spam_detect_ip+6) = 1;
			*(spam_detect_ip+7) = 1;
			int status_1 = (*(spam_detect_ip+8));
			int status_2 = (*(spam_detect_ip+9));

			while((status_1 ==0) && (status_2 ==0)){
				status_1 = (*(spam_detect_ip+8));
				status_2 = (*(spam_detect_ip+9));
			}

			spam_detect_ip = (unsigned int *)XPAR_SPAM_DETECTION_INFER_0_S00_AXI_BASEADDR;
			xil_printf(">> %x\n",(int)(*(spam_detect_ip+10)));
			int result = (*(spam_detect_ip+10));
			if(result == 1){
				xil_printf("SPAM EMAIL DETECTED\n");
				gui_packet_email[1] = 0x00;
			}
			else{
				xil_printf("NORMAL EMAIL DETECTED\n");
				gui_packet_email[1] = 0x01;
			}

			if (is_gui_connected){
				if (gui_tcp_send_packet(gui_packet_email,2)!= 0){
					xil_printf("ERROR GUI TCP SENDING\n");
					exit(-1);
				}
			}


			xil_printf("DONE PROCESSING\n");

		//	tcp_client_close(c_pcb);

		//	tcp_client_close(gui_pcb);

			xil_printf("FREE DYNAMIC MEMORY SPACES\n");
				for (int i = 0; i< num_words;i++){
					word_list[i] = NULL;
					hashkey_list[i] = 0;
				}

			free(word_list);
			word_list = NULL;	

			free(hashkey_list);
			hashkey_list = NULL;

			num_words = 0;
			num_packet_sent = 0;
			//up to here
			while(1);

			break;

		}else if (strcmp(user_cmd,"type")== 0 ){	

			spam_joint = 0;
			ham_joint = 0;
			gui_setup_client_conn();

			while(is_gui_connected == 0){
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
			}

			hash_key_n_word_set_up_w_tcp();

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
					//TODO: CHECK IF THE PACKETS ARE CORRECTLY BEING SENT OVER TO THE SERVER
					//Sending packets to server
					if (is_connected && (num_packet_sent < total_packet_to_send)){
						packet_gen(send_buf, 0x00, 0, 0);
						if (tcp_send_packet(send_buf) != 0){
							xil_printf("ERROR TCP SENDING\n");
							exit(-1);
						}
						//SENDING UDP PACKET
						if (gui_packet_send == 1 && is_gui_connected){	
							if (gui_tcp_send_packet(gui_resp,2)!= 0){
								xil_printf("ERROR GUI TCP SENDING\n");
								exit(-1);
							}
						}

						xil_printf("END LOOP\n");
					}

					if (num_packet_received == total_packet_to_send){
						break;
					}
				}

				if (is_gui_connected){
					if (gui_tcp_send_packet(user_string,str_length)!= 0){
						xil_printf("ERROR GUI TCP SENDING\n");
						exit(-1);
					}
				}
				gui_resp[0] = 0x03;

				spam_detect_ip = (unsigned int *)XPAR_SPAM_DETECTION_INFER_0_S00_AXI_BASEADDR;
				//spam detection
				*(spam_detect_ip+6) = 1;
				*(spam_detect_ip+7) = 1;

				int status_1 = (*(spam_detect_ip+8));
				int status_2 = (*(spam_detect_ip+9));

				while((status_1 ==0) && (status_2 ==0)){
					status_1 = (*(spam_detect_ip+8));
					status_2 = (*(spam_detect_ip+9));
				}

				spam_detect_ip = (unsigned int *)XPAR_SPAM_DETECTION_INFER_0_S00_AXI_BASEADDR;
				xil_printf(">> %x\n",(int)(*(spam_detect_ip+10)));
				int result = (*(spam_detect_ip+10));
				if(result == 1){
					xil_printf("SPAM EMAIL DETECTED\n");
					gui_resp[1] = 0x00;
				}
				else{

					xil_printf("NORMAL EMAIL DETECTED\n");
					gui_resp[1] = 0x01;
				}

				if (is_gui_connected){
					if (gui_tcp_send_packet(gui_resp,2)!= 0){
						xil_printf("ERROR GUI TCP SENDING\n");
						exit(-1);
					}
				}

				xil_printf("DONE PROCESSING\n");

			//	tcp_client_close(c_pcb);
			//	tcp_client_close(gui_pcb);

				// below can be replaced with "free_allocated_mem()"
				xil_printf("FREE DYNAMIC MEMORY SPACES\n");
				for (int i = 0; i< num_words;i++){
					word_list[i] = NULL;
					hashkey_list[i] = 0;
				}
				free(user_input_data);		
				user_input_data = NULL;

				free(word_list);
				word_list = NULL;	
				free(hashkey_list);
				hashkey_list = NULL;

				num_words = 0;
				num_packet_sent = 0;
				//up to here
				while(1);

				break;
		}else if (strcmp(user_cmd,"admin1")== 0){
			buf_iter = send_buf + 35;

			xil_printf("Please enter a single word to insert: \n");
			hash_key_n_word_set_up();

			xil_printf("Type in Spam probability: \n");
			spam_val_char = get_input();

			u8_t temp_float[4];

			spam_val = strtof(spam_val_char,NULL);
			memcpy(temp_float,&spam_val,sizeof(float));
			for(int i = 0;i<4;i++){
				*buf_iter = temp_float[3-i];
				buf_iter +=1;
			}

			xil_printf("Type in Hem probability: \n");
			ham_val_char = get_input();
			ham_val = strtof(ham_val_char,NULL);
			memcpy(temp_float,&ham_val,sizeof(float));
			for(int i = 0;i<4;i++){
				*buf_iter = temp_float[3-i];
				buf_iter +=1;
			}

			total_packet_to_send = 1;	

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

				//Sending packets to server
				if (is_connected && (num_packet_sent < total_packet_to_send)){
					packet_gen_insert(send_buf, 0x01);
					if (tcp_send_packet(send_buf) != 0){
						xil_printf("ERROR TCP SENDING\n");
						exit(-1);
					}
					xil_printf("END LOOP\n");
				}
				if (num_packet_received == total_packet_to_send){
					break;
				}
											//END OF ADDED CODE
			}
			tcp_client_close(c_pcb);

			//Free dyn allocated var
			free_allocated_mem();
			free(spam_val_char);
			free(ham_val_char);

			break;
		}else if (strcmp(user_cmd,"admin2")== 0){
			buf_iter = send_buf + 35;

			xil_printf("Please enter a single word to update: \n");
			hash_key_n_word_set_up();

			xil_printf("Type in Spam probability: \n");
			spam_val_char = get_input();

			u8_t temp_float[4];

			spam_val = strtof(spam_val_char,NULL);
			memcpy(temp_float,&spam_val,sizeof(float));
			for(int i = 0;i<4;i++){
				*buf_iter = temp_float[3-i];
				buf_iter +=1;
			}

			xil_printf("Type in Hem probability: \n");
			ham_val_char = get_input();
			ham_val = strtof(ham_val_char,NULL);
			memcpy(temp_float,&ham_val,sizeof(float));
			for(int i = 0;i<4;i++){
				*buf_iter = temp_float[3-i];
				buf_iter +=1;
			}

			total_packet_to_send = 1; 
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

				//Sending packets to server
				if (is_connected && (num_packet_sent < total_packet_to_send)){
					packet_gen_insert(send_buf, 0x02);
					if (tcp_send_packet(send_buf) != 0){
						xil_printf("ERROR TCP SENDING\n");
						exit(-1);
					}
					xil_printf("END LOOP\n");
				}
				if (num_packet_received == total_packet_to_send){
					break;
				}
								//END OF ADDED CODE
			}

			tcp_client_close(c_pcb);

			//Free dyn allocated var
			free_allocated_mem();
			free(spam_val_char);
			free(ham_val_char);

			break;
		}else if (strcmp(user_cmd,"admin3")== 0){
			xil_printf("Please enter words to delete: \n");
			hash_key_n_word_set_up();

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

				//Sending packets to server
				if (is_connected && (num_packet_sent < total_packet_to_send)){

					packet_gen(send_buf, 0x03, 0, 0);
					if (tcp_send_packet(send_buf) != 0){
						xil_printf("ERROR TCP SENDING\n");
						exit(-1);
					}
					xil_printf("END LOOP\n");
				}

				if (num_packet_received == total_packet_to_send){
					break;
				}
			}

			//Free dyn allocated var
			free_allocated_mem();

			xil_printf("DONE PROCESSING DATA - DELETE REQUESTS\n");
			break;
		}else if (strcmp(user_cmd,"quit")== 0){
			xil_printf("Ending process\n");
		}else{
			xil_printf("Invalid command\n\n");
		}
	}
	free(user_cmd);

	xil_printf("ENDING\n");

	cleanup_platform();

	return 0;
}

char * get_input(){
	str_length = 1;
	char * char_input;
	char * realloc_temp;
	char user_char;

	char_input = (char *) malloc (sizeof(char));
	if (char_input == NULL){
		xil_printf("ERROR allocating memory\n");
	}

	user_char = getchar(); 
	while (user_char!='\n' && user_char != 13){

		char_input[str_length-1] = user_char;
		str_length++;
		realloc_temp = realloc (char_input,str_length);
		//CHECK allocation error
		if (realloc_temp == NULL){
			xil_printf("ERROR allocating memory - user input char\n");
		}
		char_input = realloc_temp;
		user_char = getchar();
	}

	char_input[str_length-1] = '\0';

	return char_input;
}

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
	xil_printf("STARTING HASH FUNC:  ");

	while ((num_char_length - 4)>0){
		for (int i = 0; i < 4;i++){
			data = data << 8;
			data = data ^ (int) *iter_ptr;
			iter_ptr++;
		}
		num_char_length -= 4;
		//Sending data to hash_func IP
		*in_data = data;
		num_trans_done += 1;
		in_data += 1;
		data = 0;
	}

	if (num_char_length >0){
		for (int i = 0; i< num_char_length;i++){
			data = data << 8;
			data = data ^ (int) *iter_ptr;
			iter_ptr++;
		}
		for (int i = 0; i < (4-num_char_length);i++){
			data = data << 8;
		}
		//Sending data to hash_func IP
		*in_data = data;
		num_trans_done += 1;
		in_data += 1;
	}

	for (int i =0; i<((int)MAX_CHAR - num_trans_done);i++){
		//Sending data to hash_func IP
		*in_data = 0x00000000;
		in_data += 1;
	}

	//Sending data to hash_func IP
	xil_printf("len: %d\n",length);
	*(hash_base+12) = length;
	*hash_base = 1;
}

void hash_key_n_word_set_up_mem_email(){
	unsigned char * iter_temp = user_string+1;
	user_string[0]=0x02;
					xil_printf("\n");
					memcpy(iter_temp, email,strlen(email));
					xil_printf("USER INPUT: <%s> size: %d last: %d\n",email,strlen(email),email[strlen(email)-1]);
					char ** tmp_realloc = NULL;
					char * iter;

					iter = strtok (email," ");
					xil_printf("%s\n",iter);
					while(iter != NULL){

						tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
						if (tmp_realloc == NULL){
							xil_printf("ERROR allocating memory - word list1\n");
							exit (-1);
						}
						word_list = tmp_realloc;
						word_list[num_words] = iter;
						num_words = num_words + 1;
						iter = strtok(NULL, " ");
					}
					tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
					if (tmp_realloc == NULL){
						xil_printf("ERROR allocating memory - word list2\n");
						exit (-1);
					}

					word_list = tmp_realloc;
					word_list[num_words] = '\0';

					//Set num words to process
					*(hash_base+2) = num_words;

					//Sending words into hash functions
					for (int i = 0; i < num_words;i++){
						xil_printf("words: %s %d\n",word_list[i],strlen(word_list[i]));
						start_hash_key_gen(word_list[i],strlen(word_list[i]));
					}

					unsigned int * hash_ctrl = hash_base+13;

					hashkey_list = (unsigned short *)malloc (sizeof(unsigned short)*num_words);
					if (hashkey_list == NULL){
						xil_printf ("ERROR allocating memory - hashkey_list\n");
						exit (-1);
					}

					for (int i = 0; i < num_words;i++){

						while ((*hash_ctrl & 1) == 0 );
						hashkey_list[i] = *(hash_ctrl+1);
						xil_printf("copying - ");
						xil_printf("HASH ctrl: %x, ",*(hash_base+13));
						xil_printf("HASH KEY: %x\n",hashkey_list[i]);
						*hash_ctrl = 0;
					}


					total_packet_to_send = num_words;

					xil_printf("*********************************************\n");
					xil_printf("           Done Processing Data\n");
					xil_printf("*********************************************\n");


}

void hash_key_n_word_set_up_w_tcp(){
					xil_printf("\n");
					unsigned char * iter_temp = user_string+1;
					user_string[0]=0x02;
					xil_printf("ENTER A PACKET DATA TO SEND: ");
					user_input_data=get_input();
					xil_printf("\nFINISHED INPUT PROCESS\n");
					xil_printf("USER INPUT1: <%s> size: %d last: %d\n",user_input_data,str_length,user_input_data[str_length-1]);

					memcpy(iter_temp, user_input_data,str_length);
					xil_printf("%s, %d %x\n",iter_temp,str_length,user_string);

					unsigned char tcp_packet[2];
					tcp_packet[0]=0x01;
					tcp_packet[1]=0x00;

					if (is_gui_connected){
						if (gui_tcp_send_packet(tcp_packet,2)!= 0){
							xil_printf("ERROR GUI TCP SENDING\n");
							exit(-1);
						}
					}


					xil_printf("USER INPUT2: <%s> size: %d last: %d\n",user_input_data,str_length,user_input_data[str_length-1]);

					char ** tmp_realloc = NULL;
					char * iter;

					iter = strtok (user_input_data," ");
					xil_printf("%s\n",iter);
					while(iter != NULL){
						tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
						if (tmp_realloc == NULL){
							xil_printf("ERROR allocating memory - word list1\n");
							exit (-1);
						}
						word_list = tmp_realloc;
						word_list[num_words] = iter;
						num_words = num_words + 1;
						iter = strtok(NULL, " ");
					}
					tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
					if (tmp_realloc == NULL){
						xil_printf("ERROR allocating memory - word list2\n");
						exit (-1);
					}
					word_list = tmp_realloc;
					word_list[num_words] = '\0';
					//Set num words to process
					*(hash_base+2) = num_words;

					//Sending words into hash functions
					for (int i = 0; i < num_words;i++){
						xil_printf("words: %s %d\n",word_list[i],strlen(word_list[i]));
						start_hash_key_gen(word_list[i],strlen(word_list[i]));
					}

					unsigned int * hash_ctrl = hash_base+13;

					hashkey_list = (unsigned short *)malloc (sizeof(unsigned short)*num_words);
					if (hashkey_list == NULL){
						xil_printf ("ERROR allocating memory - hashkey_list\n");
						exit (-1);
					}
					for (int i = 0; i < num_words;i++){
						while ((*hash_ctrl & 1) == 0 );
						hashkey_list[i] = *(hash_ctrl+1);
						xil_printf("copying - ");
						xil_printf("HASH ctrl: %x, ",*(hash_base+13));
						xil_printf("HASH KEY: %x\n",hashkey_list[i]);
						*hash_ctrl = 0;

					}
					tcp_packet[0]=0x05;
					tcp_packet[1] = num_words & 0xFF;
					xil_printf("VALUE??: %02x",tcp_packet[1]);

					if (is_gui_connected){
						if (gui_tcp_send_packet(tcp_packet,2)!= 0){
							xil_printf("ERROR GUI TCP SENDING\n");
							exit(-1);
						}
					}

					total_packet_to_send = num_words;

					xil_printf("*********************************************\n");
					xil_printf("           Done Processing Data\n");
					xil_printf("*********************************************\n");


}

void hash_key_n_word_set_up(){
					xil_printf("\n");

					xil_printf("ENTER A PACKET DATA TO SEND: ");
					user_input_data=get_input();
					xil_printf("\nFINISHED INPUT PROCESS\n");
					xil_printf("USER INPUT: <%s> size: %d last: %d\n",user_input_data,str_length,user_input_data[str_length-1]);

					char ** tmp_realloc = NULL;
					char * iter;

					iter = strtok (user_input_data," ");
					xil_printf("%s\n",iter);
					while(iter != NULL){

						tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
						if (tmp_realloc == NULL){
							xil_printf("ERROR allocating memory - word list1\n");
							exit (-1);
						}
						word_list = tmp_realloc;
						word_list[num_words] = iter;
						num_words = num_words + 1;
						iter = strtok(NULL, " ");
					}
					tmp_realloc = realloc (word_list, sizeof (char *)*(num_words+1));
					if (tmp_realloc == NULL){
						xil_printf("ERROR allocating memory - word list2\n");
						exit (-1);
					}
					word_list = tmp_realloc;
					word_list[num_words] = '\0';
					//Set num words to process
					*(hash_base+2) = num_words;

					//Sending words into hash functions
					for (int i = 0; i < num_words;i++){
						xil_printf("words: %s %d\n",word_list[i],strlen(word_list[i]));
						start_hash_key_gen(word_list[i],strlen(word_list[i]));
					}

					unsigned int * hash_ctrl = hash_base+13;

					hashkey_list = (unsigned short *)malloc (sizeof(unsigned short)*num_words);
					if (hashkey_list == NULL){
						xil_printf ("ERROR allocating memory - hashkey_list\n");
						exit (-1);
					}

					for (int i = 0; i < num_words;i++){

						while ((*hash_ctrl & 1) == 0 );
						hashkey_list[i] = *(hash_ctrl+1);
						xil_printf("copying - ");
						xil_printf("HASH ctrl: %x, ",*(hash_base+13));
						xil_printf("HASH KEY: %x\n",hashkey_list[i]);
						*hash_ctrl = 0;
					}


					total_packet_to_send = num_words;

					xil_printf("*********************************************\n");
					xil_printf("           Done Processing Data\n");
					xil_printf("*********************************************\n");


}

void free_allocated_mem(){
	xil_printf("FREE DYNAMIC MEMORY SPACES\n");
	for (int i = 0; i< num_words;i++){
		word_list[i] = NULL;
		hashkey_list[i] = 0;
	}
	free(user_input_data);		
	user_input_data = NULL;

	free(word_list);
	word_list = NULL;		

	free(hashkey_list);
	hashkey_list = NULL;

	num_words = 0;
	num_packet_sent = 0;
}

void print_menu(){
	xil_printf("**********************************************\n");
	xil_printf("         SPAM EMAIL DETECTION - menu       \n");
	xil_printf("**********************************************\n");
	xil_printf("\'start\' - Start spam email detection - emails in mem\n");
	xil_printf("\'type\' - Start spam email detection - let user type email\n");
	xil_printf("\'admin1\' - Insert a new key/values to hash table\n");
	xil_printf("\'admin2\' - Update existing entry in the server\n");
	xil_printf("\'admin3\' - Delete an entry in the server\n");
	xil_printf("\'quit\' - Exit\n");
	xil_printf("**********************************************\n");
	xil_printf(">> \n");

}
void packet_gen_insert(u8_t * send_buf, unsigned char op_code){

	u32_t i;

	send_buf[0] = op_code;
	send_buf[1] = (hashkey_list[num_packet_sent] >> 8) & 0xFF;
	send_buf[2] = hashkey_list[num_packet_sent] & 0xFF;


	int num_char_length = strlen(word_list[num_packet_sent]);
	int total = 0;
	char * iter_ptr = word_list[num_packet_sent];
	unsigned char * buf_iter = send_buf + 3;

	while ((num_char_length - 4)>0){
		for (int i = 0; i < 4;i++){
			*buf_iter = iter_ptr[3-i];
			buf_iter += 1;
		}
		total += 4;
		iter_ptr += 4;
		num_char_length -= 4;
	}

	if (num_char_length >0){
		for (int i = 0; i < (4-num_char_length);i++){
			*buf_iter = 0x00;
			buf_iter+=1;
		}
		for (int i = 0; i< num_char_length;i++){
			*buf_iter = iter_ptr[num_char_length-1-i];
			buf_iter +=1;
		}
		total += 4;
	}

	for (i = total; i < 32 ;i++){
			send_buf[3+i] = 0x00;
	}

	send_buf[TCP_SEND_BUFSIZE-1] = '\n';

	xil_printf("PRINT SENDING DATA: ");
	for (i = 0; i<TCP_SEND_BUFSIZE;i++){
		xil_printf(" %02x",send_buf[i]);
	}
	xil_printf("\n");

}

void packet_gen(u8_t * send_buf, unsigned char op_code, float data1, float data2 ){

	u32_t i;
	u8_t * iter;

	send_buf[0] = op_code;
	send_buf[1] = (hashkey_list[num_packet_sent] >> 8) & 0xFF;
	send_buf[2] = hashkey_list[num_packet_sent] & 0xFF;


//SD CARD (BIN USING SD CARD) -> also update recv_callback

	int num_char_length = strlen(word_list[num_packet_sent]);
	int total = 0;
	char * iter_ptr = word_list[num_packet_sent];
	unsigned char * buf_iter = send_buf + 3;


	while ((num_char_length - 4)>0){
		for (int i = 0; i < 4;i++){
			*buf_iter = iter_ptr[3-i];
			buf_iter += 1;
		}
		total += 4;
		iter_ptr += 4;
		num_char_length -= 4;
	}

	if (num_char_length >0){
		for (int i = 0; i < (4-num_char_length);i++){
			*buf_iter = 0x00;
			buf_iter+=1;
		}
		for (int i = 0; i< num_char_length;i++){
			*buf_iter = iter_ptr[num_char_length-1-i];
			buf_iter +=1;
		}
		total += 4;
	}
	xil_printf(">>%d %d\n",total,strlen(word_list[num_packet_sent]));
	for (i = total; i < 32 ;i++){
			send_buf[3+i] = 0x00;
	}

//----------------------------------------------

/*
//REVERSE - LITTLE ENDIAN IN DDR (bin to DDR USING XSCT with mem2.bin)

	for (i = 0;i < strlen(word_list[num_packet_sent]);i++){
		send_buf[3+i] = word_list[num_packet_sent][i];
	}
	for (i = strlen(word_list[num_packet_sent]); i < 32 ;i++){
		send_buf[3+i] = 0x00;
	}
*/
//-----------------------------------

	iter = send_buf + 35;
	if(op_code == 0x01 || op_code == 0x02){
		memcpy(iter,&data1,sizeof(float));
		iter = iter + 4;
		memcpy(iter,&data2,sizeof(float));
	}
	else{
		for (i = 0; i < 8; i++){
			send_buf[35+i] = 0x00;
		}
	}

	send_buf[TCP_SEND_BUFSIZE-1] = '\n';

	xil_printf("PRINT SENDING DATA: ");
	for (i = 0; i<TCP_SEND_BUFSIZE;i++){
		xil_printf(" %02x",send_buf[i]);
	}
	xil_printf("\n");

}




int tcp_network_setup(){

	//Varibales for IP parameters
	#if LWIP_IPV6==0
		ip_addr_t ipaddr, netmask, gw;
	#endif

		//The mac address of the board. this should be unique per board
		unsigned char mac_ethernet_address[] = SRC_MAC_ADDR;

		//Network interface
		app_netif = &server_netif;

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


		packet_sent = 0;


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
	is_connected = 0; 		//SETTING CONNECTION VAR TO 0 TODO: here or inside of error callback func

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
	//udp_packet_send = 1;
	gui_packet_send = 1;	

	u32_t i;
	xil_printf("*************************************************************\n");
	xil_printf("Packet received, %d bytes\n", p->tot_len);
	xil_printf("*************************************************************\n");
	char* packet_data = (char*) malloc(p->tot_len);
	float spam_data = 0;
	float ham_data = 0;
	u8_t * iter;
	u8_t temp_char[4];

	unsigned int * ham_fifo = spam_detect_ip+3;

	u8_t * buffer_data = p->payload;
	if (buffer_data[0] == 0){
		xil_printf("___VALID DATA SET (hex)___: ");
		for (i = 0;i<8;i++){
			xil_printf(" %02x",(unsigned char)buffer_data[35+i]);
		}
		xil_printf("\n");
		unsigned int test_var;
		iter = buffer_data+35;


			// REVERSE ORDER -> USE THIS IF PROBABILIYT IS IN REVERSE ORDER - SD card?
			for(int i = 0;i<4;i++){
				temp_char[i] = iter[3-i];
			}

			memcpy (&test_var,temp_char,sizeof(float));
			*spam_detect_ip = test_var;
			xil_printf(">> %x ",test_var);
			iter += 4;
			for(int i = 0;i<4;i++){
				temp_char[i] = iter[3-i];
			}
			memcpy (&test_var,temp_char,sizeof(float));
			*(spam_detect_ip+3) = test_var;
			xil_printf("%x ",test_var);
			//-------------------------------------------------


/*
			// BIN FILE LOADED WITH XSCT----------------mem2.bin----------------------------

			memcpy (&test_var,iter,sizeof(float));
			*spam_detect_ip = test_var;
			xil_printf(">> %x ",test_var);
			iter += 4;
			memcpy (&test_var,iter,sizeof(float));
			*(spam_detect_ip+3) = test_var;
			xil_printf("%x ",test_var);
			//--------------------------------------------
*/

		*(spam_detect_ip+1) = 1;
		*(spam_detect_ip+1) = 0;
		*(spam_detect_ip+4)=1;
		*(spam_detect_ip+4)=0;

		//Increment the num of packet received
		num_packet_received += 1;
	}
	else if (buffer_data[0] == 1){
		xil_printf("_______________Packet ACKNOWLEDGED_______________\n");
		num_packet_received += 1;
	}

	pbuf_copy_partial(p, packet_data, p->tot_len, 0); //Note - inefficient way to access packet data


	xil_printf("IN HEX: ");
	for(i = 0; i < p->tot_len; i = i + 1){
		xil_printf(" %02x",(unsigned char)packet_data[i]);
	}
	xil_printf("\n");
	xil_printf("*************************************************************\n");


	//END OF ADDED CODE

	//Indicate done processing
	tcp_recved(tpcb, p->tot_len);

	//Free the received pbuf
	pbuf_free(p);

	//Free the packet_data
	free(packet_data);

	return 0;
}

err_t tcp_send_packet(unsigned char *send_buf){
	u8_t apiflags = TCP_WRITE_FLAG_COPY;
	err_t err; //MAYBE DELETE THIS and use different method?
	packet_sent = 0;

	//Loop until enough room in buffer (should be right away)
	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);

	//Enqueue some data to send
	err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_write: %d\n", err);
		return err;
	}

	err = tcp_output(c_pcb);
	if (err != ERR_OK){
		xil_printf("TCP client: Error on tcp_output: %d\n", err);
		return err;
	}

	//Staying inside of this loop to make sure only a single packet data (44 bytes) is sent
	while(packet_sent == 0 && is_connected){
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
	}
	num_packet_sent += 1;

	return 0;
}

static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	//ADD CODE HERE to do on packet acknowledged
	packet_sent = 1;
	//Print message
	xil_printf("Packet sent successfully, %d bytes\n", len);
	xil_printf("------------------------------------------\n");
	return 0;
}

static void tcp_client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	tcp_client_close(c_pcb);
	c_pcb = NULL;
	xil_printf("TCP connection aborted\n");
}

int gui_setup_client_conn(){
	struct tcp_pcb *pcb;
		err_t err;
		ip_addr_t remote_addr;
		xil_printf("Setting up GUI client connection\n");
		err = inet_aton(GUI_DEST_IP4_ADDR, &remote_addr);

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
		err = tcp_bind(pcb, IP_ANY_TYPE, GUI_SRC_PORT);
		if (err != ERR_OK) {
			xil_printf("Unable to bind to port %d: err = %d\n", GUI_SRC_PORT, err);
			return -2;
		}

		//Connect to remote server (with callback on connection established)
		err = tcp_connect(pcb, &remote_addr, GUI_DEST_PORT, gui_tcp_client_connected);
		if (err) {
			xil_printf("Error on tcp_connect: %d\n", err);
			tcp_client_close(pcb);
			return -1;
		}

		is_gui_connected = 0;

		xil_printf(">> Waiting for GUI server to accept connection\n");

		return 0;
}
static err_t gui_tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err){
		if (err != ERR_OK) {
			tcp_client_close(tpcb);
			xil_printf("Connection error\n");
			return err;
		}
		xil_printf("********************************************\n");
		xil_printf("Connection to GUI server established\n");
		xil_printf("********************************************\n");
		//Store state (for callbacks)
		gui_pcb = tpcb;
		is_gui_connected = 1;

		//Set callback values & functions
		tcp_arg(gui_pcb, NULL);
		tcp_recv(gui_pcb, NULL);
		tcp_sent(gui_pcb, gui_tcp_client_sent);
		tcp_err(gui_pcb, gui_tcp_client_err);


		return ERR_OK;
}
static err_t gui_tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len){
		//ADD CODE HERE to do on packet acknowledged
		gui_packet_sent = 1;
		//Print message
		xil_printf("Packet sent to GUI successfully, %d bytes\n", len);
		xil_printf("------------------------------------------\n");

		return 0;
}
static void gui_tcp_client_err(void *arg, err_t err){
	LWIP_UNUSED_ARG(err);
	tcp_client_close(gui_pcb);
	gui_pcb = NULL;
	xil_printf("TCP connection aborted - GUI server\n");
}

err_t gui_tcp_send_packet(unsigned char *send_buf,int size){
		u8_t apiflags = TCP_WRITE_FLAG_COPY;
		err_t err;

		gui_packet_sent = 0;

		//Loop until enough room in buffer (should be right away)
		while (tcp_sndbuf(gui_pcb) < size);

		//Enqueue some data to send
		err = tcp_write(gui_pcb, send_buf, size, apiflags);
		if (err != ERR_OK) {
			xil_printf("TCP client: Error on tcp_write: %d\n", err);
			return err;
		}

		err = tcp_output(gui_pcb);
		if (err != ERR_OK){
			xil_printf("TCP client: Error on tcp_output: %d\n", err);
			return err;
		}

		//Staying inside of this loop to make sure only a single packet data (44 bytes) is sent
		while(gui_packet_sent == 0 && is_gui_connected){
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
		}
		gui_packet_send = 0;

		return 0;
}

