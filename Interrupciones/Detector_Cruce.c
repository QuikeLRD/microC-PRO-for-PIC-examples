void Interrupt(){

     if(INT0IF_bit == 1){
        
        //GENERAMOS UN ANGULO DE DISPARO
        delay_us(3200);
        
        //GENERAMOS UN DISPARO, ES DECIR UN FLANCO
        PORTD.RD0 = 1;
        delay_ms(1);
        PORTD.RD0 = 0;
        
        INT0IF_bit = 0;                         //LIMPIAMOS LA BANDERA
     }


}

void main() {
     ADCON1 = 15;                               //TODOS LOS PINES SON DIGITALES

     TRISB.RB0 = 1;
     TRISD.RD0 = 0;
     

     
     GIE_bit  = 1;                              //HABILITAMOS INTERRUPCIONES GLOBALES
     PEIE_bit = 1;                              //HABILITAMOS INTERRUPCIONES DE PERIFERICOS
     
     INT0IF_bit = 0;                            //LIMPIAMOS LA BANDERA INTERRUPCIÓN EXTERNA 0
     INT0IE_bit = 1;                            //HABILITAMOS INTERUPCIÓN EXTERNA 0
     
     INTEDG0_bit = 1;                           //INTERRUPCIÓN POR FLANCOS DE SUBIDA

     PORTD.RD0 = 0;                            //PUERTO D0 APAGADO
     
     while(1){
     }
     
     
}