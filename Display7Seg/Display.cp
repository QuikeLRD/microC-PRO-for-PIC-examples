#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Display7Seg/Display.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/display7seg/decodificador_7seg.h"
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
#line 2 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Display7Seg/Display.c"
int digito1 =0, digito2 =9;
int tiempo = 100;
void main() {

 ADCON1 = 0x0F;
 TRISA.RA0 = 1;
 TRISA.RA1 = 1;
 TRISB = 0x00;
 TRISD = 0x00;


 while(1){

 if(RA0_bit){
 while(RA0_bit);
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
