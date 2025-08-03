int n1=3, n2;

void main() {

     ADCON1 = 0x0F;
     TRISB =  0xFF;
     TRISD =  0x00;
     TRISC.RC0 = 0;
     TRISC.RC1 = 0;

     //El motor comienza apagado
     PORTC.RC0 = 0;
     PORTC.RC1 = 0;
     
     
     
     while(1){
              
              if (!(RB0_bit ==1) || !(RB1_bit ==1)){
                   PORTC.RC0 = 1;
                   PORTC.RC1 = 0;

              }
              else{
                   PORTC.RC0 = 0;
                   PORTC.RC1 = 0;

              }
              
              if(n1>=3)
                 LATD.F0 = 1;
              else
                 LATD.F0 = 0;


              delay_ms(200);
     }

}