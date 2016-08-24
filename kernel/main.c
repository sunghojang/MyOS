#include "kernel.h"
//#include "uart.h"
char str[]="Hello World!!\n\r";

void kmain(void)
{
    int i = 0;
    while (str[i]) {
        uart_putc(str[i]);
        i++;
    }

    while (1);
}
