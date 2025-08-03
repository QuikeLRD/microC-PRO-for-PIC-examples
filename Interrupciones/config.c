#include "config.h"
char decoAC(unsigned char valor){
     char deco;
     
     switch(valor){
          case 0: deco = 192; break;
          case 1: deco = 249; break;
          case 2: deco = 164; break;
          case 3: deco = 176; break;
          case 4: deco = 153; break;
          case 5: deco = 146; break;
          case 6: deco = 130; break;
          case 7: deco = 248; break;
          case 8: deco = 128; break;
          case 9: deco = 152; break;
     }
     return deco;
}
void secuencia(int te){
     
     LATD = 0b00000001;
     vdelay_ms(te);
     LATD = 0b00000011;
     vdelay_ms(te);
     LATD = 0b00000111;
     vdelay_ms(te);
     LATD = 0b00001111;
     vdelay_ms(te);
     LATD = 0b00011111;
     vdelay_ms(te);
     LATD = 0b00111111;
     vdelay_ms(te);
     LATD = 0b01111111;
     vdelay_ms(te);
     LATD = 0b11111111;
     vdelay_ms(te);

}
