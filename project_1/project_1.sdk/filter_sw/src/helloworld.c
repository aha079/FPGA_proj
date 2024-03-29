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
#include "xil_types.h"
#include "xil_io.h"
#include "xstatus.h"
#define base1 0x44A00000
#define base2 0x44A10000
#define base3 0x44A20000
#define base4 0x44A30000
#define reg0 0
#define reg1 4
#define reg2 8
#define reg3 12
#define reg4 16
#define edgeDetection_mWriteReg(BaseAddress, RegOffset, Data) \
		Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define edgeDetection_mReadReg(BaseAddress, RegOffset) \
		Xil_In32((BaseAddress) + (RegOffset))



int main()
{
	int pixels8[8][8] = {{90, 72, 38, 8, 55, 38, 245, 240},
						 {95, 54, 21, 18, 16, 150, 190, 235},
						 {80, 28, 24, 33, 44, 55, 200, 240},
						 {100, 60, 58, 44, 0, 65, 150, 280},
						 {180, 170, 55, 48, 0, 140, 132, 220},
						 {220, 200, 220, 2, 13, 50, 70, 85},
						 {240, 238, 0, 1, 18, 11, 60, 95},
						 {240, 220, 200, 100, 31, 30, 32, 250}};
	int pixels[3][3];

	int num1, num2, num3;


    init_platform();

    for(int r = 0; r < 6; r++){
    	for(int c = 0; c < 6; c++){
    		pixels[0][0] = pixels8[0+r][0+c];
			pixels[0][1] = pixels8[0+r][1+c];
			pixels[0][2] = pixels8[0+r][2+c];
			pixels[1][0] = pixels8[1+r][0+c];
			pixels[1][1] = pixels8[1+r][1+c];
			pixels[1][2] = pixels8[1+r][2+c];
			pixels[2][0] = pixels8[2+r][0+c];
			pixels[2][1] = pixels8[2+r][1+c];
			pixels[2][2] = pixels8[2+r][2+c];

			num1 = pixels[0][0] + (256 * pixels[0][1]) + (65536 * pixels[0][2]);
			num2 = pixels[1][0] + (256 * pixels[1][1]) + (65536 * pixels[1][2]);
			num3 = pixels[2][0] + (256 * pixels[2][1]) + (65536 * pixels[2][2]);

			// det1 : Sobel
			edgeDetection_mWriteReg(base1, reg0, 0x0000AA01);
			edgeDetection_mWriteReg(base1, reg1, num1);
			edgeDetection_mWriteReg(base1, reg2, num2);
			edgeDetection_mWriteReg(base1, reg3, num3);
			edgeDetection_mReadReg(base1, reg4);

			// det2 : Prewitt
			edgeDetection_mWriteReg(base2, reg0, 0x0000AA02);
			edgeDetection_mWriteReg(base2, reg1, num1);
			edgeDetection_mWriteReg(base2, reg2, num2);
			edgeDetection_mWriteReg(base2, reg3, num3);
			edgeDetection_mReadReg(base2, reg4);

			// det3 : Laplacian4
			edgeDetection_mWriteReg(base3, reg0, 0x0000AA04);
			edgeDetection_mWriteReg(base3, reg1, num1);
			edgeDetection_mWriteReg(base3, reg2, num2);
			edgeDetection_mWriteReg(base3, reg3, num3);
			edgeDetection_mReadReg(base3, reg4);

			// det3 : Laplacian8
			edgeDetection_mWriteReg(base4, reg0, 0x0000AA08);
			edgeDetection_mWriteReg(base4, reg1, num1);
			edgeDetection_mWriteReg(base4, reg2, num2);
			edgeDetection_mWriteReg(base4, reg3, num3);
			edgeDetection_mReadReg(base4, reg4);
    	}
    }
    cleanup_platform();
    return 0;
}
