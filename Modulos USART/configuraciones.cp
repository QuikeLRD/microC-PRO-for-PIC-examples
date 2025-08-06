#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/configuraciones.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/modulos usart/configuraciones.h"


sbit dir_TX at RC6_bit;
sbit dir_RX at RC7_bit;


void USART_INIT(long BAUDRATE);
void USART_CHAR(char letra);
void USART_TEXTO(char *texto);

char USART_RX(void);
char USART_DATA_RDY();
#line 3 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Modulos USART/configuraciones.c"
void USART_INIT(long BAUDRATE){


 dir_TX = 0;
 dir_RX = 1;


 TXSTA.TX9 = 0;
 RCSTA.RX9 = 0;

 TXSTA.SYNC = 0;

 if( 1000.0*Get_Fosc_kHz()  <=4000000){

 SPBRG = (unsigned int)(( 1000.0*Get_Fosc_kHz() /(16.0*BAUDRATE))-1.0);

 TXSTA.BRGH = 1;
 }
 else{

 SPBRG = (unsigned int)(( 1000.0*Get_Fosc_kHz() /(64.0*BAUDRATE))-1.0);

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
char USART_RX(void){

 if(RCSTA.OERR ==1){
 RCSTA.CREN = 0;
 }
 asm{
 NOP
 }
 RCSTA.CREN = 1;
 return RCREG;
}


char USART_DATA_RDY(){
 return PIR1.RCIF;

}
