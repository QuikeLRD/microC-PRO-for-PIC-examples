#include "configuraciones.h"

void main() {

     ADCON1 =15;
     USART_INIT(9600);
     
     while(1){
              USART_TEXTO("Quike \n\r");
              USART_TEXTO("Lerdo \n\r");
              delay_ms(300);
     }

}