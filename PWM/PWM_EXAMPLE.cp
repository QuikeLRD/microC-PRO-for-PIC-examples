#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/PWM/PWM_EXAMPLE.c"
int valorPR2 = 50, reg = 200, aux;

void SetDuty(int regM){
 CCPR1L = regM>>2;
 DC1B0_bit = regM&0b0000000001;
 DC1B1_bit = (regM&0b0000000010)>>1;
 }

void main() {
 ADCON1 = 15;
 TRISC2_bit = 0;


 CCP1CON = 0b00001100;
 PR2 = valorPR2;

 SetDuty(reg);

 T2CON = 0b00000101;


 while (1){

 for(aux = 0; aux <= 200; aux++){
 SetDuty(aux);
 delay_ms(50);
 }
 for(aux = 200; aux >0; aux--){
 SetDuty(aux);
 delay_ms(50);
 }
 }


}
