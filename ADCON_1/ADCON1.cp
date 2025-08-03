#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/ADCON_1/ADCON1.c"

void main() {

 TRISC = 0x00;
 TRISD = 0x00;


 ADCON1 = 14;

 CHS3_bit =0;
 CHS2_bit =0;
 CHS1_bit =0;
 CHS0_bit =0;


 ACQT2_bit = 0;
 ACQT1_bit = 1;
 ACQT0_bit = 0;

 ADCS2_bit = 1;
 ADCS1_bit = 0;
 ADCS0_bit = 0;


 ADFM_bit = 1;

 ADON_bit = 1;

 while(1){
 GO_DONE_bit = 1;

 while(GO_DONE_bit ==1);
 LATC = ADRESH;
 LATD = ADRESL;

 delay_us(20);

 }

}
