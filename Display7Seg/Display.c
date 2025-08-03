#include "Decodificador_7seg.h"
int digito1 =0, digito2 =9;
int tiempo = 100;
void main() {
     
     ADCON1 = 0x0F; //Todas las entradas I/O salidas son digitales.
     TRISA.RA0 = 1;
     TRISA.RA1 = 1;
     TRISB = 0x00;
     TRISD = 0x00;
     
     
     while(1){
     
     if(RA0_bit){
         while(RA0_bit);      //Agregamos antirebote
         tiempo = tiempo + 100;
         if(tiempo > 1000)
            tiempo = 1000;
         }
     if(!RA1_bit){
        while(!RA1_bit);
        tiempo = tiempo - 100;
        if(tiempo < 200)
           tiempo = 200;
        }
     
     //Decodificación
     //Encender un 5 y un 2
     //LATD = deco_cc(5);
     //LATB = deco_ac(2);
     //delay_ms(1000);

     LATD = deco_cc(digito1);
     LATB = deco_ac(digito2);
     Vdelay_ms(tiempo);
     digito1++;
     digito2--;
               if(digito1>9)
                            digito1 =0;
               if(digito2<0)
                            digito2 =9;

     
     
     }
     return;

}