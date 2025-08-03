
void main() {

     TRISC = 0x00;
     TRISD = 0x00;

     //Configuramos el ADCON1
     ADCON1 = 14;
     //Configuramos el ADCON0, Seleccionamos el canal 0
     CHS3_bit =0;
     CHS2_bit =0;
     CHS1_bit =0;
     CHS0_bit =0;
     //Configuramos el ADCON2, configuración de tiempos
     //Seleccionamos la constante 4 en ambos
     ACQT2_bit = 0;
     ACQT1_bit = 1;
     ACQT0_bit = 0;
     
     ADCS2_bit = 1;
     ADCS1_bit = 0;
     ADCS0_bit = 0;
     
     //Bit para justificación
     ADFM_bit = 1;
     //Encendemos el ADCON, esto es en ADCON0
     ADON_bit = 1;
     
     while(1){
              GO_DONE_bit = 1;
              //Tenemos que esperar hasta que este bit se ponga en 0
              while(GO_DONE_bit ==1);
              LATC = ADRESH;
              LATD = ADRESL;
              
              delay_us(20);
              
     }
     
}