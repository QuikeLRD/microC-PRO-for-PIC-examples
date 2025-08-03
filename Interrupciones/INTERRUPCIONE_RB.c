// Lcd pinout settings
sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;

// Pin direction
sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;

char valorB, zona1=0, zona2=0, zona3=0, zona4=0;

void Interrupt(){

     if (RBIF_bit == 1){                 //SE HA PRODUCIDO UN CAMBIO DE ESTADO?
     
     
        LATB.F0 += 1;                    //DEJA EN 1 B0, ES DECIR ENCIENDE Y APAGA EL PUERTO RB0
        valorB = PORTB&0xF0;             //TOMAMOS LOS 4 BITS MAS SIGNIFICATIVOS Y LIMPIAMOS LOS QUE NO
        zona1 = (valorB&0b00010000)>>4;  //VALOR CON EL CUAL SE ACTIVARA
        zona2 = (valorB&0b00100000)>>5;  //VALOR CON EL CUAL SE ACTIVARA
        zona3 = (valorB&0b01000000)>>6;  //VALOR CON EL CUAL SE ACTIVARA
        zona4 = (valorB&0b10000000)>>7;  //VALOR CON EL CUAL SE ACTIVARA

        
        
        RBIF_bit = 0;                    //DEJAMOS EN CERO LA CONDICIÓN
     }

}

void main() {

     ADCON1 = 15;                        //TODOS LOS PINES SON DIGITALES
     TRISB =  0xF0;                      //PRIMEROS 4 ENTRADAS Y ULTIMOS 4 SALIDAS
     
     valorB = PORTB&0xF0;                //ASIGNO EL VALOR DEL PUERTOB A LA VARIABLE PARA COMPARAR
     
     GIE_bit  = 1;                       //HABILITAMOS INTERRUPCIONES GLOBALES
     RBIF_bit = 0;                       //BORRAMOS BANDERA DE INTERRUPCIÓN POR RB
     RBIE_bit = 1;                       //HABILITAMOS INTERRUPCION POR RB

     LCD_init();
     LCD_Cmd(12);
     LCD_Out(1,1, " SIST. SEGURIDAD");
     
     while(1){
          if(zona1 ==1)
                   LCD_Out(2,1, "Z1:  ON");
                   else
                   LCD_Out(2,1, "Z1: OFF"); //DEBE QUEDARNOS ALINEADO, ES DECIR DEL MISMO TAMAÑO

          if(zona2 ==1)
                   LCD_Out(2,9, "Z2:  ON");
                   else
                   LCD_Out(2,9, "Z2: OFF"); //DEBE QUEDARNOS ALINEADO, ES DECIR DEL MISMO TAMAÑO

          if(zona3 ==1)
                   LCD_Out(3,1, "Z3:  ON");
                   else
                   LCD_Out(3,1, "Z3: OFF"); //DEBE QUEDARNOS ALINEADO, ES DECIR DEL MISMO TAMAÑO

          if(zona4 ==1)
                   LCD_Out(3,9, "Z4:  ON");
                   else
                   LCD_Out(3,9, "Z4: OFF");
     }

}