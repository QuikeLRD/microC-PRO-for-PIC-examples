#include "Decodificador_7seg.h"
int numero, centena, decena, unidad;

void main() {
     
     OSCCON = 0x72;
     ADCON1 = 15;
     TRISA = 0x00;
     TRISB = 0x00;
     TRISD = 0x00;
     
     numero = 978;
     centena = numero/100;
     numero%=100; //numero = numero%100;
     decena  = numero/10;
     unidad  = numero%10;
     centena--;
     unidad++;
     ++decena;

     LATA = deco_ac(centena);
     LATB = deco_ac(unidad);
     LATD = deco_ac(decena);

     
     while(1){
     

     }
     return;

}