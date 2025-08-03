#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Sensor Ultrasonico/HCSR04.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/sensor ultrasonico/config.h"
sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;



sbit PinTrig at RD2_bit;
sbit PinECHO at RD3_bit;

sbit DIR_PinTrig at TRISD2_bit;
sbit DIR_PinEcho at TRISD3_bit;
#line 2 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/Sensor Ultrasonico/HCSR04.c"
char straux[20]="";
unsigned int distancia;

unsigned int getDistancia(){
 unsigned int contador= 0;

 pinTrig = 1;
 delay_us(10);
 pinTrig = 0;

 while(PinEcho ==0);
 while(PinEcho ==1){
 contador++;
 delay_us(58);
 }
 return(contador);
}


void main() {
 ADCON1 = 0x0F;
 DIR_PinTrig =  0 ;
 DIR_PinEcho =  1 ;


 Lcd_Init();
 Lcd_cmd(12);
 Lcd_Out(1,1,"    HCSR04 ");


 while(1) {
 distancia = getDistancia();
 sprintf(straux,"distancia: %04d",distancia);
 Lcd_Out(2,1,straux);
 delay_ms(30);
 }
}
