#ifndef __UART_H__
#define __UART_H__

#include "uart.h"

void uart_putc(char ch) {
    S5PC11X_UART *const uart = (S5PC11X_UART *)0x13800000;
    //UART0 used.

    while (!(uart->UTRSTAT & 0x2));
    //0x02 0010(b) This bit is automatically set to 1 if transmit buffer is empty.

    uart->UTXH = ch;
    //parameter char ch 1byte 1word Tx
}
#endif /* __UART_H__ end. */
