#include "configuraciones.h"

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