
_SetDuty:

;PWM_EXAMPLE.c,3 :: 		void SetDuty(int regM){
;PWM_EXAMPLE.c,4 :: 		CCPR1L = regM>>2;                  //Llenamos el registro CCPR1L
	MOVF        FARG_SetDuty_regM+0, 0 
	MOVWF       R0 
	MOVF        FARG_SetDuty_regM+1, 0 
	MOVWF       R1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	BTFSC       R1, 6 
	BSF         R1, 7 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	BTFSC       R1, 6 
	BSF         R1, 7 
	MOVF        R0, 0 
	MOVWF       CCPR1L+0 
;PWM_EXAMPLE.c,5 :: 		DC1B0_bit = regM&0b0000000001;      //Configuramos el DCB0 bit
	MOVLW       1
	ANDWF       FARG_SetDuty_regM+0, 0 
	MOVWF       R0 
	BTFSC       R0, 0 
	GOTO        L__SetDuty11
	BCF         DC1B0_bit+0, BitPos(DC1B0_bit+0) 
	GOTO        L__SetDuty12
L__SetDuty11:
	BSF         DC1B0_bit+0, BitPos(DC1B0_bit+0) 
L__SetDuty12:
;PWM_EXAMPLE.c,6 :: 		DC1B1_bit = (regM&0b0000000010)>>1; //Configuramos el DCB1 bit
	MOVLW       2
	ANDWF       FARG_SetDuty_regM+0, 0 
	MOVWF       R3 
	MOVF        FARG_SetDuty_regM+1, 0 
	MOVWF       R4 
	MOVLW       0
	ANDWF       R4, 1 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	BTFSC       R1, 6 
	BSF         R1, 7 
	BTFSC       R0, 0 
	GOTO        L__SetDuty13
	BCF         DC1B1_bit+0, BitPos(DC1B1_bit+0) 
	GOTO        L__SetDuty14
L__SetDuty13:
	BSF         DC1B1_bit+0, BitPos(DC1B1_bit+0) 
L__SetDuty14:
;PWM_EXAMPLE.c,7 :: 		}
L_end_SetDuty:
	RETURN      0
; end of _SetDuty

_main:

;PWM_EXAMPLE.c,9 :: 		void main() {
;PWM_EXAMPLE.c,10 :: 		ADCON1 = 15;                       //Coloco todos los pines como digitales
	MOVLW       15
	MOVWF       ADCON1+0 
;PWM_EXAMPLE.c,11 :: 		TRISC2_bit = 0;                    //Configuro como salida el pin RC2
	BCF         TRISC2_bit+0, BitPos(TRISC2_bit+0) 
;PWM_EXAMPLE.c,14 :: 		CCP1CON = 0b00001100;              //Configuro en modo PWM
	MOVLW       12
	MOVWF       CCP1CON+0 
;PWM_EXAMPLE.c,15 :: 		PR2 = valorPR2;
	MOVF        _valorPR2+0, 0 
	MOVWF       PR2+0 
;PWM_EXAMPLE.c,17 :: 		SetDuty(reg);                     //Duty Cycle = 100%
	MOVF        _reg+0, 0 
	MOVWF       FARG_SetDuty_regM+0 
	MOVF        _reg+1, 0 
	MOVWF       FARG_SetDuty_regM+1 
	CALL        _SetDuty+0, 0
;PWM_EXAMPLE.c,19 :: 		T2CON = 0b00000101;                //Configuramos el timer2 para 4
	MOVLW       5
	MOVWF       T2CON+0 
;PWM_EXAMPLE.c,22 :: 		while (1){
L_main0:
;PWM_EXAMPLE.c,24 :: 		for(aux = 0; aux <= 200; aux++){
	CLRF        _aux+0 
	CLRF        _aux+1 
L_main2:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _aux+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main16
	MOVF        _aux+0, 0 
	SUBLW       200
L__main16:
	BTFSS       STATUS+0, 0 
	GOTO        L_main3
;PWM_EXAMPLE.c,25 :: 		SetDuty(aux);
	MOVF        _aux+0, 0 
	MOVWF       FARG_SetDuty_regM+0 
	MOVF        _aux+1, 0 
	MOVWF       FARG_SetDuty_regM+1 
	CALL        _SetDuty+0, 0
;PWM_EXAMPLE.c,26 :: 		delay_ms(50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	NOP
;PWM_EXAMPLE.c,24 :: 		for(aux = 0; aux <= 200; aux++){
	INFSNZ      _aux+0, 1 
	INCF        _aux+1, 1 
;PWM_EXAMPLE.c,27 :: 		}
	GOTO        L_main2
L_main3:
;PWM_EXAMPLE.c,28 :: 		for(aux = 200; aux >0; aux--){
	MOVLW       200
	MOVWF       _aux+0 
	MOVLW       0
	MOVWF       _aux+1 
L_main6:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _aux+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main17
	MOVF        _aux+0, 0 
	SUBLW       0
L__main17:
	BTFSC       STATUS+0, 0 
	GOTO        L_main7
;PWM_EXAMPLE.c,29 :: 		SetDuty(aux);
	MOVF        _aux+0, 0 
	MOVWF       FARG_SetDuty_regM+0 
	MOVF        _aux+1, 0 
	MOVWF       FARG_SetDuty_regM+1 
	CALL        _SetDuty+0, 0
;PWM_EXAMPLE.c,30 :: 		delay_ms(50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	NOP
;PWM_EXAMPLE.c,28 :: 		for(aux = 200; aux >0; aux--){
	MOVLW       1
	SUBWF       _aux+0, 1 
	MOVLW       0
	SUBWFB      _aux+1, 1 
;PWM_EXAMPLE.c,31 :: 		}
	GOTO        L_main6
L_main7:
;PWM_EXAMPLE.c,32 :: 		}
	GOTO        L_main0
;PWM_EXAMPLE.c,35 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
