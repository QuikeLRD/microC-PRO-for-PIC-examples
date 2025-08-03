#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Operadores/Display.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/operadores/decodificador_7seg.h"
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
#line 2 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Operadores/Display.c"
int numero, centena, decena, unidad;

void main() {

 OSCCON = 0x72;
 ADCON1 = 15;
 TRISA = 0x00;
 TRISB = 0x00;
 TRISD = 0x00;

 numero = 978;
 centena = numero/100;
 numero%=100;
 decena = numero/10;
 unidad = numero%10;
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
