#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Interrupciones/INT_EXTERNAS.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/interrupciones/config.h"
char decoAC(unsigned char valor);
void secuencia(int te);
#line 2 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Interrupciones/INT_EXTERNAS.c"
int i=0;

void interrupt(){

 if(INT0IF_bit == 1){
 i++;
 if(i>9)
 i=0;
 LATA = decoAC(i);
 INT0IF_bit = 0;
 }
 if(INT1IF_bit == 1){
 i--;
 if(i<0)
 i=9;
 LATA = decoAC(i);
 INT1IF_bit = 0;
 }
}

void main() {

 OSCCON = 0b01110010;
 ADCON1 = 15;
 TRISA = 0x00;
 TRISD = 0x00;
 TRISB0_bit = 1;
 TRISB1_bit = 1;
 LATA = 0x00;
 LATD = 0xFF;


 GIE_bit = 1;
 PEIE_bit = 1;

 INT0IF_bit = 0;
 INT1IF_bit = 0;

 INT0IE_bit = 1;
 INT1IE_bit = 1;

 INTEDG0_bit = 1;
 INTEDG1_bit = 1;

 while (1){

 secuencia(1000);

 }


}
