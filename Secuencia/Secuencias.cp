#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Secuencia/Secuencias.c"
int i = 0;
void Sec1(){
 LATD = 0b00000001;
 delay_ms(200);
 LATD = 0b00000010;
 delay_ms(200);
 LATD = 0b00000100;
 delay_ms(200);
 LATD = 0b00001000;
 delay_ms(200);
 LATD = 0b00010000;
 delay_ms(200);
 LATD = 0b00100000;
 delay_ms(200);
 LATD = 0b01000000;
 delay_ms(200);
 LATD = 0b10000000;
 delay_ms(200);
}
void Sec2(){
 LATD = 0XF0;
 delay_ms(200);
 LATD = 0X0F;
 delay_ms(200);
}
void Sec3(){
 LATD = 0b01010101;
 delay_ms(200);
 LATD = 0b10101010;
 delay_ms(200);
}


void main() {

 TRISD = 0b00000000;
 LATD = 0x00;
 while(1){
 for (i=0; i<=6; i++){
 Sec1();
 }
 for(i=0; i<=23; i++){
 Sec2();
 }
 for(i=0; i<=23; i++){
 Sec3();
 }

 }
 return;
}
