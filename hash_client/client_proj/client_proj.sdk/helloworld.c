/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
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

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

volatile unsigned int* spam_detection_fifo = (unsigned int*) XPAR_SPAM_DETECTION_INFER_0_S00_AXI_BASEADDR;

int main()
{
    init_platform();

    print("Spam Detection Inference. \n\r");

    *(spam_detection_fifo) = 0x0D020308; // spam fifo data input
    *(spam_detection_fifo+1) = 1; // spam fifo enable
    *(spam_detection_fifo+1) = 0;
    *(spam_detection_fifo) = 0x08200108;
    *(spam_detection_fifo+1) = 1;
    *(spam_detection_fifo+1) = 0;
    *(spam_detection_fifo) = 0x04806201;
	*(spam_detection_fifo+1) = 1;
	*(spam_detection_fifo+1) = 0;
	*(spam_detection_fifo) = 0x0C806A07;
	*(spam_detection_fifo+1) = 1;
	*(spam_detection_fifo+1) = 0;

    *(spam_detection_fifo+6) = 1; // spam write done


    xil_printf("Addr: \%x, Read (spam out value): \%x \n\r", spam_detection_fifo+2, *(spam_detection_fifo+2)); // 0x0D42604C 5.989678E-31

    *(spam_detection_fifo+3) = 0x03420308; // ham fifo data input
	*(spam_detection_fifo+4) = 1; // ham fifo enable
	*(spam_detection_fifo+4) = 0;
	*(spam_detection_fifo+3) = 0x03842021;
	*(spam_detection_fifo+4) = 1;
	*(spam_detection_fifo+4) = 0;
	*(spam_detection_fifo+3) = 0x0784202D;
	*(spam_detection_fifo+4) = 1;
	*(spam_detection_fifo+4) = 0;
	*(spam_detection_fifo+3) = 0x06864429;
	*(spam_detection_fifo+4) = 1;
	*(spam_detection_fifo+4) = 0;


	*(spam_detection_fifo+7) = 1; // ham write done

	while (*(spam_detection_fifo+8) == 0) {
		; // wait for spam computation
	}

	while (*(spam_detection_fifo+9) == 0) {
		; // wait for ham computation
	}

	xil_printf("Addr: \%x, Read (ham out value): \%x \n\r", spam_detection_fifo+5, *(spam_detection_fifo+5)); // 0x07A69659 2.506527E-34


	xil_printf("Addr: \%x, Read (result value): \%x \n\r", spam_detection_fifo+10, *(spam_detection_fifo+10)); // 1 spam


    cleanup_platform();
    return 0;
}
