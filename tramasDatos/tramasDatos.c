#include "LCD.h"
char letra, banderaRx=0, i;
char trama[20]=" ", indice=0;
char strLCD[20]="RAMIRO";

void Interrupt(){

     if(RCIF_bit ==1){                       //  0 1 2 3
                 trama[indice] = UART1_Read();       //J U A N
                 
                 if(trama[indice] == '#'){
                     //proceso
                     banderaRx=1;

                 }
                 else{
                      indice++;
                 }
                 

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
              Lcd_Out(2,1,strLCD);
              if(banderaRx==1){

                 if(trama[0]=='L' && trama[1] == '1' && trama[2] == 'O' && trama[3] == 'N'){
                                  PORTA.RA0 = 1;
                 }
                 if(trama[0]=='L' && trama[1] == '1' && trama[2] == 'O' && trama[3] == 'F' && trama[4] == 'F'){
                                  PORTA.RA0 = 0;
                 }
                 for(i=0; i<=19; i++){
                    trama[i]=' ';
                 }

                   indice=0;
                   banderaRx=0;
              }
              if(letra == '1')
                       PORTA.RA0 = 1;
              if(letra == '0')
                       PORTA.RA0 = 0;
     
              delay_ms(100);
     }

}