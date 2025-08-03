#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/ADCON_2/ADCON1.c"
int s1, s2, s0, aux;

void my_ADC_Init(){


 ACQT2_bit = 0;
 ACQT1_bit = 1;
 ACQT0_bit = 0;

 ADCS2_bit = 1;
 ADCS1_bit = 0;
 ADCS0_bit = 0;

 ADFM_bit = 1;

 ADON_bit = 1;

}

int my_ADC_Read(char canal){


 CHS3_bit = (canal&0b00001000)>>3;
 CHS2_bit = (canal&0b00000100)>>2;
 CHS1_bit = (canal&0b00000010)>>1;
 CHS0_bit = (canal&0b0000001);
 GO_DONE_bit = 1;

 while(GO_DONE_bit ==1);
 delay_us(20);
 return ( ADRESH<<8 | ADRESL);
}
void main() {


 TRISC = 0x00;
 TRISD = 0x00;

 ADCON1 = 12;
 ADC_Init();


 while(1){

 s1 = ADC_Read(0);
 s2 = ADC_Read(1);
 s0 = ADC_Read(2);

 if(RB0_bit ==0 && RB1_bit ==0){
 aux =s0;
 }
 if(RB0_bit ==1 && RB1_bit ==0){
 aux =s1;
 }
 if(RB0_bit ==0 && RB1_bit ==1){
 aux =s2;
 }

 LATC = aux>>8;
 LATD = s1;

 }
 return;
}
