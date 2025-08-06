#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/USART01.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/modulos usart/configuraciones.h"


sbit dir_TX at RC6_bit;
sbit dir_RX at RC7_bit;


void USART_INIT(long BAUDRATE);
void USART_CHAR(char letra);
void USART_TEXTO(char *texto);

char USART_RX(void);
char USART_DATA_RDY();
#line 3 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/USART01.c"
char letra;


void main() {

 ADCON1 =15;
 TRISA.RA0 = 0;
 USART_INIT(9600);

 while(1){
 if(USART_DATA_RDY()==1){
 letra = USART_RX();
 if(letra == 'a'){
 PORTA.RA0 = 0;
 }
 if(letra == 'b'){
 PORTA.RA0 = 1;
 }

 }

 USART_TEXTO("Quike \n\r");
 USART_TEXTO("Lerdo \n\r");
 delay_ms(300);
 }

}
