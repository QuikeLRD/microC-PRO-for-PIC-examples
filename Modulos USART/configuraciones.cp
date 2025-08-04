#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/configuraciones.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/modulos usart/configuraciones.h"


sbit dir_TX at RC6_bit;
sbit dir_RX at RC7_bit;


void USART_INIT(long BAUDRATE);
void USART_CHAR(char letra);
void USART_TEXTO(char *texto);
#line 3 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/configuraciones.c"
void USART_INIT(long BAUDRATE){


 dir_TX = 0;
 dir_RX = 1;


 TXSTA.TX9 = 0;
 RCSTA.RX9 = 0;

 TXSTA.SYNC = 0;

 if( 8000000.0  <=4000000){

 SPBRG = (unsigned int)(( 8000000.0 /(16.0*BAUDRATE))-1.0);

 TXSTA.BRGH = 1;
 }
 else{

 SPBRG = (unsigned int)(( 8000000.0 /(64.0*BAUDRATE))-1.0);

 TXSTA.BRGH = 0;
 }


 TXSTA.TXEN = 1;
 RCSTA.SPEN = 1;
 RCSTA.CREN = 1;


}

void USART_CHAR(char letra){

 TXREG = letra;
 while(TXSTA.TRMT == 0);

}

void USART_TEXTO(char *texto){

 while(*texto){
 USART_CHAR(*texto);
 texto++;
 }

}
