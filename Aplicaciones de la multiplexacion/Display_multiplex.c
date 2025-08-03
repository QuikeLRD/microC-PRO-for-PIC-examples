#include "Decodificador_7seg.h"

#define D1 PORTA.RA0
#define D2 PORTA.RA1
#define D3 PORTA.RA2
#define D4 PORTA.RA3
#define datos PORTD

const tiempo =10;
char minutos=5, segundos=55, contador=0;

void multiplex(){
     D1 =1; D2=0; D3=0; D4=0;
     datos = deco_ac(minutos/10);
     delay_ms(tiempo);
     D1 =0; D2=1; D3=0; D4=0;
     datos = deco_ac(minutos%10);
     delay_ms(tiempo);

     D1 =0; D2=0; D3=1; D4=0;
     datos = deco_ac(segundos/10);
     delay_ms(tiempo);
     D1 =0; D2=0; D3=0; D4=1;
     datos = deco_ac(segundos%10);
     delay_ms(tiempo);


}

void main() {
     ADCON1 = 0x0F;
     TRISA  = 0x00;
     TRISD  = 0x00;
     
     TRISB.RB0 = 1;
     TRISB.RB1 = 1;
     
     D1=D2=D3=D4=0;
     
     while(1){
              if(contador==25){
               segundos++;
               if(segundos>59){
                              segundos=0;
                              minutos++;
                              if(minutos>59)
                                            minutos=0;
               }
               contador=-1;
              }
              multiplex();
              contador++;
     }


     return;

}