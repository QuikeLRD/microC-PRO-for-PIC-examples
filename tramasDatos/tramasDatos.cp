#line 1 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/tramasDatos/tramasDatos.c"
#line 1 "q:/enriq/documents/quike/mecatronica/microcontroladores/curso de mikroc/tramasdatos/lcd.h"

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
#line 2 "Q:/enriq/Documents/Quike/Mecatronica/Microcontroladores/Curso de MikroC/tramasDatos/tramasDatos.c"
char letra;

void Interrupt(){

 if(RCIF_bit ==1){
 letra = UART1_Read();
 RCIF_bit = 0;

 }

}

void main() {
 ADCON1 = 15;
 TRISA0_bit = 0;
 PORTA.RA0 =0;

 RCIF_bit = 0;
 GIE_bit = 1;
 PEIE_bit = 1;
 RCIE_bit = 1;

 UART1_Init(9600);
 Lcd_Init();
 Lcd_Cmd(12);



 while(1){


 if(letra == '1')
 PORTA.RA0 = 1;
 if(letra == '0')
 PORTA.RA0 = 0;

 delay_ms(100);
 }

}
