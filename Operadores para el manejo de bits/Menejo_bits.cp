#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Operadores para el manejo de bits/Menejo_bits.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/operadores para el manejo de bits/decodificador_7seg.h"
char deco_cc(char num){
 char var;

 switch(num){
 case 0: var = 63; break;
 case 1: var = 6; break;
 case 2: var = 91; break;
 case 3: var = 79; break;
 case 4: var =102; break;
 case 5: var =109; break;
 case 6: var =125; break;
 case 7: var = 7; break;
 case 8: var =127; break;
 case 9: var =103; break;

 }
 return var;
}
char deco_ac(char num){
 char var;

 switch(num){
 case 0: var = 63; break;
 case 1: var = 6; break;
 case 2: var = 91; break;
 case 3: var = 79; break;
 case 4: var =102; break;
 case 5: var =109; break;
 case 6: var =125; break;
 case 7: var = 7; break;
 case 8: var =127; break;
 case 9: var =103; break;

 }
 return (127-var);
}
#line 3 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Operadores para el manejo de bits/Menejo_bits.c"
int dat = 0b00111111, dat2 = 0b00011110, i = 0;
void main() {
 ADCON1 = 0x0F;
 TRISA = 0x00;
 TRISD = 0x00;
 TRISB = 0xFF;

 LATD = dat^dat2;
 LATA = ~deco_cc(3);



 while(1){

 LATA = deco_ac(PORTB&0x0F);


 }
 return;

}
