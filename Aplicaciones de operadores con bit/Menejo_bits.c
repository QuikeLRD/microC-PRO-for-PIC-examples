int iter=0, i=0, valor1=1, valor2=0b11111111111;
void main() {
     OSCCON = 0x72;
     ADCON1 = 0x0F;
     TRISC  = 0x00;
     TRISD  = 0x00;
     
     
     
     while(1){
              LATD = iter;
              LATC = iter>>8;
              if(i<=11){
                        iter = iter | (valor1<<i);
              }
              else{
                   iter = iter & (valor2>>(i-11));
              }
              i++;
              if(i>22)
                      i=0;
              delay_ms(200);
     


     }
     return;

}