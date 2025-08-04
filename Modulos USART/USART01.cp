#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/USART01.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/modulos usart/configuraciones.h"


sbit dir_TX at RC6_bit;
sbit dir_RX at RC7_bit;


void USART_INIT(long BAUDRATE);
void USART_CHAR(char letra);
void USART_TEXTO(char *texto);
#line 3 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/USART01.c"
void main() {

 ADCON1 =15;
 USART_INIT(9600);

 while(1){
 USART_TEXTO("Quike \n\r");
 USART_TEXTO("Lerdo \n\r");
 delay_ms(300);
 }

}
