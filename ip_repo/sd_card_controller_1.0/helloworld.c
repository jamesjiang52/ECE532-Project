#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

#define MEMSIZE 3
volatile unsigned int* membase = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;
volatile unsigned int* reset_gpio = (unsigned int*) XPAR_AXI_GPIO_0_BASEADDR;
int main()
{
    int i, val, err = 0;

    init_platform();
    *reset_gpio = 0;
    *reset_gpio = 1;
    while (*(reset_gpio+2) == 0) {

    }

    //xil_printf(" Read: %x \n\r", *(reset_gpio+2));
    /*
    print("Writing to Memory\n\r");
    for(i = 0; i < MEMSIZE; i++)
    {
        *(membase +i) = i+1;
    }
	*/
    print("Reading from Memory\n\r");

    xil_printf("Addr: \%x, Read: \%x \n\r", membase, *(membase));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+1, *(membase+1));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+2, *(membase+2));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+3, *(membase+3));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+4, *(membase+4));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+5, *(membase+5));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+6, *(membase+6));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+7, *(membase+7));
    xil_printf("Addr: \%x, Read: \%x \n\r", membase+48, *(membase+48));

    /*
    for(i = 0; i < MEMSIZE; i++)
    {
        val = *(membase+i*128);
        xil_printf(" Read: \%x \n\r", val);

        if(val != i+1)
        {
            xil_printf("Error: at addr \%x, read \%d but expected \%d\n\r", membase+i, val, i+1);
            err = 1;
        }

    }
    */
    /*
    if(!err)
    {
        print("No errors encountered\n\r");
    }
	*/

    cleanup_platform();
    return 0;
}
