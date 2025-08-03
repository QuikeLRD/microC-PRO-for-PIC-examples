#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Interrupciones/INTERRUPCIONE_RB.c"

sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;


sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;

char valorB, zona1=0, zona2=0, zona3=0, zona4=0;

void Interrupt(){

 if (RBIF_bit == 1){


 LATB.F0 += 1;
 valorB = PORTB&0xF0;
 zona1 = (valorB&0b00010000)>>4;
 zona2 = (valorB&0b00100000)>>5;
 zona3 = (valorB&0b01000000)>>6;
 zona4 = (valorB&0b10000000)>>7;



 RBIF_bit = 0;
 }

}

void main() {

 ADCON1 = 15;
 TRISB = 0xF0;

 valorB = PORTB&0xF0;

 GIE_bit = 1;
 RBIF_bit = 0;
 RBIE_bit = 1;

 LCD_init();
 LCD_Cmd(12);
 LCD_Out(1,1, " SIST. SEGURIDAD");

 while(1){
 if(zona1 ==1)
 LCD_Out(2,1, "Z1:  ON");
 else
 LCD_Out(2,1, "Z1: OFF");

 if(zona2 ==1)
 LCD_Out(2,9, "Z2:  ON");
 else
 LCD_Out(2,9, "Z2: OFF");

 if(zona3 ==1)
 LCD_Out(3,1, "Z3:  ON");
 else
 LCD_Out(3,1, "Z3: OFF");

 if(zona4 ==1)
 LCD_Out(3,9, "Z4:  ON");
 else
 LCD_Out(3,9, "Z4: OFF");
 }

}
