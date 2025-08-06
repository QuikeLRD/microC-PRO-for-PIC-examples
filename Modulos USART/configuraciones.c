#include "configuraciones.h"

void USART_INIT(long BAUDRATE){

     //definimos las entradas y salidas del RX y TX
     dir_TX = 0;
     dir_RX = 1;
     
     //definimos 8 bits de información manipulando el registro TXSTA y RCSTA
     TXSTA.TX9 = 0;
     RCSTA.RX9 = 0;
     //configurar el modulo como
     TXSTA.SYNC = 0;
     
     if(_FOSC <=4000000){
     //CALCULO DEL BAUDRATE   16->alta 64->baja
     SPBRG = (unsigned int)((_FOSC/(16.0*BAUDRATE))-1.0);
     //DEFINIMOS LA VELOCIDAD   1->ALTA 0->BAJA
     TXSTA.BRGH = 1;
     }
     else{
     //CALCULO DEL BAUDRATE   16->alta 64->baja
     SPBRG = (unsigned int)((_FOSC/(64.0*BAUDRATE))-1.0);
     //DEFINIMOS LA VELOCIDAD   1->ALTA 0->BAJA
     TXSTA.BRGH = 0;
     }
     
     //HABILITAR LOS MODULOS
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
        RCSTA.CREN = 0;         //Limpiamos el OERR
     }
        asm{
            NOP
            }
        RCSTA.CREN = 1;         //Habilitamos la RX para futuros datos
     return RCREG;
}


char USART_DATA_RDY(){
     return PIR1.RCIF;

}

