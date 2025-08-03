
_Interrupt:

;Detector_Cruce.c,1 :: 		void Interrupt(){
;Detector_Cruce.c,3 :: 		if(INT0IF_bit == 1){
	BTFSS       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L_Interrupt0
;Detector_Cruce.c,6 :: 		delay_us(3200);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_Interrupt1:
	DECFSZ      R13, 1, 1
	BRA         L_Interrupt1
	DECFSZ      R12, 1, 1
	BRA         L_Interrupt1
	NOP
;Detector_Cruce.c,9 :: 		PORTD.RD0 = 1;
	BSF         PORTD+0, 0 
;Detector_Cruce.c,10 :: 		delay_ms(1);
	MOVLW       7
	MOVWF       R12, 0
	MOVLW       125
	MOVWF       R13, 0
L_Interrupt2:
	DECFSZ      R13, 1, 1
	BRA         L_Interrupt2
	DECFSZ      R12, 1, 1
	BRA         L_Interrupt2
;Detector_Cruce.c,11 :: 		PORTD.RD0 = 0;
	BCF         PORTD+0, 0 
;Detector_Cruce.c,13 :: 		INT0IF_bit = 0;                         //LIMPIAMOS LA BANDERA
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;Detector_Cruce.c,14 :: 		}
L_Interrupt0:
;Detector_Cruce.c,17 :: 		}
L_end_Interrupt:
L__Interrupt6:
	RETFIE      1
; end of _Interrupt

_main:

;Detector_Cruce.c,19 :: 		void main() {
;Detector_Cruce.c,20 :: 		ADCON1 = 15;                               //TODOS LOS PINES SON DIGITALES
	MOVLW       15
	MOVWF       ADCON1+0 
;Detector_Cruce.c,22 :: 		TRISB.RB0 = 1;
	BSF         TRISB+0, 0 
;Detector_Cruce.c,23 :: 		TRISD.RD0 = 0;
	BCF         TRISD+0, 0 
;Detector_Cruce.c,27 :: 		GIE_bit  = 1;                              //HABILITAMOS INTERRUPCIONES GLOBALES
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;Detector_Cruce.c,28 :: 		PEIE_bit = 1;                              //HABILITAMOS INTERRUPCIONES DE PERIFERICOS
	BSF         PEIE_bit+0, BitPos(PEIE_bit+0) 
;Detector_Cruce.c,30 :: 		INT0IF_bit = 0;                            //LIMPIAMOS LA BANDERA INTERRUPCIÓN EXTERNA 0
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;Detector_Cruce.c,31 :: 		INT0IE_bit = 1;                            //HABILITAMOS INTERUPCIÓN EXTERNA 0
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;Detector_Cruce.c,33 :: 		INTEDG0_bit = 1;                           //INTERRUPCIÓN POR FLANCOS DE SUBIDA
	BSF         INTEDG0_bit+0, BitPos(INTEDG0_bit+0) 
;Detector_Cruce.c,35 :: 		PORTD.RD0 = 0;                            //PUERTO D0 APAGADO
	BCF         PORTD+0, 0 
;Detector_Cruce.c,37 :: 		while(1){
L_main3:
;Detector_Cruce.c,38 :: 		}
	GOTO        L_main3
;Detector_Cruce.c,41 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
