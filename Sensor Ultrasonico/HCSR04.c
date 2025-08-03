#include "CONFIG.h"
char straux[20]="";
unsigned int distancia;

unsigned int getDistancia(){
         unsigned int contador= 0;
         
         pinTrig = 1;
         delay_us(10);
         pinTrig = 0;
         
         while(PinEcho ==0);
         while(PinEcho ==1){
               contador++;
               delay_us(58);
         }
         return(contador);
}


void main() {
     ADCON1 = 0x0F;
     DIR_PinTrig = OUT;
     DIR_PinEcho = IN;


     Lcd_Init();
     Lcd_cmd(12);
     Lcd_Out(1,1,"    HCSR04 ");


    while(1) {
              distancia = getDistancia();
              sprintf(straux,"distancia: %04d",distancia);
              Lcd_Out(2,1,straux);
              delay_ms(30);
     }
}