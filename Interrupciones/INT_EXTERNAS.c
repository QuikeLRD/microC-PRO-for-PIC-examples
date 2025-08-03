#include "config.h"
int i=0;

void interrupt(){

     if(INT0IF_bit == 1){
        i++;
        if(i>9)
               i=0;
        LATA = decoAC(i);
        INT0IF_bit = 0;                //BORRAMOS LA BANDERA DEBIDO A QUE ATENDIMOS EL EVENTO
     }
     if(INT1IF_bit == 1){
        i--;
        if(i<0)
               i=9;
        LATA = decoAC(i);
        INT1IF_bit = 0;                //BORRAMOS LA BANDERA DEBIDO A QUE ATENDIMOS EL EVENTO
     }
}

void main() {

 OSCCON = 0b01110010;
 ADCON1 = 15;
 TRISA  = 0x00;
 TRISD  = 0x00;
 TRISB0_bit = 1;
 TRISB1_bit = 1;
  LATA = 0x00;                           //ENCIENDE TODOS LOS SEGMENTOS DEL DISPLAY
 LATD = 0xFF;                           //ENCIENDE TODOS LOS
  //HABILITAMOS INTERRUPCIÓN
  
  GIE_bit  = 1;                         //HABILITAMOS INTERRUPCIONES GLOBALES
  PEIE_bit = 1;                         //HABILITAMOS INTERRUPCIONE DE PERIFERICOS
  
  INT0IF_bit = 0;                       //BORRAMOS LAS BANDERAS DE LA INTERRUPCIÓN 0
  INT1IF_bit = 0;                       //BORRAMOS LAS BANDERAS DE LA INTERRUPCIÓN 1
  
  INT0IE_bit = 1;                       //HABILITAMOS INTERRUPCIÓN EXTERNA 0
  INT1IE_bit = 1;                       //HABILITAMOS INTERRUPCIÓN EXTERNA 1
  
  INTEDG0_bit = 1;                      //INTERRUPCIÓN0 POR FLANCOS DE SUBIDA
  INTEDG1_bit = 1;                      //INTERRUPCIÓN1 POR FLANCOS DE SUBIDA
  
  while (1){
  
          secuencia(1000);
  
  }


}