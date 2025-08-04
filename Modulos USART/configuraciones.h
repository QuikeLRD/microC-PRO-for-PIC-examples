#define _FOSC  8000000.0

sbit dir_TX at RC6_bit;
sbit dir_RX at RC7_bit;


void USART_INIT(long BAUDRATE);
void USART_CHAR(char letra);
void USART_TEXTO(char *texto);