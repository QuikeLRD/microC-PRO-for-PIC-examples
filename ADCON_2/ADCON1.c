int s1, s2, s0, aux;

void my_ADC_Init(){
     //Configuramos el ADCON2, configuraci�n de tiempos
     //Seleccionamos la constante 4 en ambos
     ACQT2_bit = 0;
     ACQT1_bit = 1;
     ACQT0_bit = 0;

     ADCS2_bit = 1;
     ADCS1_bit = 0;
     ADCS0_bit = 0;
     //Bit para justificaci�n
     ADFM_bit = 1;
     //Encendemos el ADCON, esto es en ADCON0
     ADON_bit = 1;

}

int my_ADC_Read(char canal){
             //Indicamos en que canal se va a realizar la conversi�n
              //Configuramos el ADCON0, Seleccionamos el canal 0
              CHS3_bit = (canal&0b00001000)>>3;
              CHS2_bit = (canal&0b00000100)>>2;
              CHS1_bit = (canal&0b00000010)>>1;
              CHS0_bit = (canal&0b0000001);
              GO_DONE_bit = 1;
              //Tenemos que esperar hasta que este bit se ponga en 0
              while(GO_DONE_bit ==1);
              delay_us(20);
              return ( ADRESH<<8 | ADRESL);
}
void main() {


     TRISC = 0x00;
     TRISD = 0x00;
     //Configuramos el ADCON1
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