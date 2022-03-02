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

volatile unsigned int *hash_table_mgr_base = (unsigned int *)XPAR_HASH_TABLE_MGR_0_S00_AXI_BASEADDR;

int main()
{
    init_platform();

    *(hash_table_mgr_base + 1) = 0x00000001;
    *(hash_table_mgr_base + 2) = 1;
    *(hash_table_mgr_base + 3) = 0x11111111;
    *(hash_table_mgr_base + 4) = 0x22222222;
    *(hash_table_mgr_base + 5) = 0x33333333;
    *(hash_table_mgr_base + 6) = 0x44444444;
    *(hash_table_mgr_base + 7) = 0x55555555;
    *(hash_table_mgr_base + 8) = 0x66666666;
    *(hash_table_mgr_base + 9) = 0x77777777;
    *(hash_table_mgr_base + 10) = 0x88888888;
    *(hash_table_mgr_base + 11) = 0x99999999;
    *(hash_table_mgr_base + 12) = 0xaaaaaaaa;
    *(hash_table_mgr_base + 0) = 1;

    while (*(hash_table_mgr_base + 16) == 0) ;

    cleanup_platform();
    return 0;
}

