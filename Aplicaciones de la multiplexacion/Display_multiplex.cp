#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Aplicaciones de la multiplexacion/Display_multiplex.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/aplicaciones de la multiplexacion/decodificador_7seg.h"
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
 return (255-var);
}
#line 9 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Aplicaciones de la multiplexacion/Display_multiplex.c"
const tiempo =10;
char minutos=5, segundos=55, contador=0;

void multiplex(){
  PORTA.RA0  =1;  PORTA.RA1 =0;  PORTA.RA2 =0;  PORTA.RA3 =0;
  PORTD  = deco_ac(minutos/10);
 delay_ms(tiempo);
  PORTA.RA0  =0;  PORTA.RA1 =1;  PORTA.RA2 =0;  PORTA.RA3 =0;
  PORTD  = deco_ac(minutos%10);
 delay_ms(tiempo);

  PORTA.RA0  =0;  PORTA.RA1 =0;  PORTA.RA2 =1;  PORTA.RA3 =0;
  PORTD  = deco_ac(segundos/10);
 delay_ms(tiempo);
  PORTA.RA0  =0;  PORTA.RA1 =0;  PORTA.RA2 =0;  PORTA.RA3 =1;
  PORTD  = deco_ac(segundos%10);
 delay_ms(tiempo);


}

void main() {
 ADCON1 = 0x0F;
 TRISA = 0x00;
 TRISD = 0x00;

 TRISB.RB0 = 1;
 TRISB.RB1 = 1;

  PORTA.RA0 = PORTA.RA1 = PORTA.RA2 = PORTA.RA3 =0;

 while(1){
 if(contador==25){
 segundos++;
 if(segundos>59){
 segundos=0;
 minutos++;
 if(minutos>59)
 minutos=0;
 }
 contador=-1;
 }
 multiplex();
 contador++;
 }


 return;

}
