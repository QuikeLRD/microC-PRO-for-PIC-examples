#define _FOSC  1000.0*Get_Fosc_kHz()

sbit dir_TX at RC6_bit;
sbit dir_RX at RC7_bit;


void USART_INIT(long BAUDRATE);
void USART_CHAR(char letra);
void USART_TEXTO(char *texto);

char USART_RX(void);
char USART_DATA_RDY();
