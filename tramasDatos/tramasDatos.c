#include "LCD.h"
char letra;

void Interrupt(){

     if(RCIF_bit ==1){
                 letra = UART1_Read();
                 RCIF_bit = 0;
                 
     }

}

void main() {
     ADCON1 = 15;
     TRISA0_bit = 0;
     PORTA.RA0 =0;
     
     RCIF_bit = 0;
     GIE_bit  = 1;
     PEIE_bit = 1;
     RCIE_bit = 1;
     
     UART1_Init(9600);
     Lcd_Init();
     Lcd_Cmd(12);
     
     
     
     while(1){
     
              if(letra == '1')
                       PORTA.RA0 = 1;
              if(letra == '0')
                       PORTA.RA0 = 0;
     
              delay_ms(100);
     }

}