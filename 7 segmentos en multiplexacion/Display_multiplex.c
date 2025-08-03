#include "Decodificador_7seg.h"

#define D1 PORTA.RA0
#define D2 PORTA.RA1
#define D3 PORTA.RA2
#define D4 PORTA.RA3
#define datos PORTD

const tiempo =10;

void main() {
     ADCON1 = 0x0F;
     TRISA  = 0x00;
     TRISD  = 0x00;
     
     while(1){
              
              //2816
              D1 =1; D2 =0; D3 =0; D4=0;
              LATD = deco_ac(2);
              delay_ms(tiempo);
              
              D1 =0; D2 =1; D3 =0; D4=0;
              LATD = deco_ac(8);
              delay_ms(tiempo);
              
              D1 =0; D2 =0; D3 =1; D4=0;
              LATD = deco_ac(1);
              delay_ms(tiempo);
              
              D1 =0; D2 =0; D3 =0; D4=1;
              LATD = deco_ac(6);
              delay_ms(tiempo);
     
     }
     return;

}