#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Interrupciones/Detector_Cruce.c"
void Interrupt(){

 if(INT0IF_bit == 1){


 delay_us(3200);


 PORTD.RD0 = 1;
 delay_ms(1);
 PORTD.RD0 = 0;

 INT0IF_bit = 0;
 }


}

void main() {
 ADCON1 = 15;

 TRISB.RB0 = 1;
 TRISD.RD0 = 0;



 GIE_bit = 1;
 PEIE_bit = 1;

 INT0IF_bit = 0;
 INT0IE_bit = 1;

 INTEDG0_bit = 1;

 PORTD.RD0 = 0;

 while(1){
 }


}
