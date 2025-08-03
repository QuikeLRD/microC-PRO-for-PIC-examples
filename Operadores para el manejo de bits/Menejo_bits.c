#include "Decodificador_7seg.h"

int dat = 0b00111111, dat2 = 0b00011110, i = 0;
void main() {
     ADCON1 = 0x0F;
     TRISA  = 0x00;
     TRISD  = 0x00;
     TRISB  = 0xFF;
     
     LATD = dat^dat2;
     LATA = ~deco_cc(3);
     
     
     
     while(1){

              LATA = deco_ac(PORTB&0x0F);  //Mover con nibble 1
              //LATA = deco_ac((PORTB&0xF0)>>4); //Le quitamos la parte alta del puerto.

     }
     return;

}