int valorPR2 = 50, reg = 200, aux;

void SetDuty(int regM){
     CCPR1L = regM>>2;                  //Llenamos el registro CCPR1L
     DC1B0_bit = regM&0b0000000001;      //Configuramos el DCB0 bit
     DC1B1_bit = (regM&0b0000000010)>>1; //Configuramos el DCB1 bit
     }

void main() {
     ADCON1 = 15;                       //Coloco todos los pines como digitales
     TRISC2_bit = 0;                    //Configuro como salida el pin RC2
     
     //Config modulo CCP
     CCP1CON = 0b00001100;              //Configuro en modo PWM
     PR2 = valorPR2;

     SetDuty(reg);                     //Duty Cycle = 100%
     //Configurar el TIMER2
     T2CON = 0b00000101;                //Configuramos el timer2 para 4
     

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