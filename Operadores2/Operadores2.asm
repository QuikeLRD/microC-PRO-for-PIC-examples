
_main:

;Operadores2.c,3 :: 		void main() {
;Operadores2.c,5 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Operadores2.c,6 :: 		TRISB =  0xFF;
	MOVLW       255
	MOVWF       TRISB+0 
;Operadores2.c,7 :: 		TRISD =  0x00;
	CLRF        TRISD+0 
;Operadores2.c,8 :: 		TRISC.RC0 = 0;
	BCF         TRISC+0, 0 
;Operadores2.c,9 :: 		TRISC.RC1 = 0;
	BCF         TRISC+0, 1 
;Operadores2.c,12 :: 		PORTC.RC0 = 0;
	BCF         PORTC+0, 0 
;Operadores2.c,13 :: 		PORTC.RC1 = 0;
	BCF         PORTC+0, 1 
;Operadores2.c,17 :: 		while(1){
L_main0:
;Operadores2.c,19 :: 		if (!(RB0_bit ==1) || !(RB1_bit ==1)){
	BTFSS       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L__main9
	BTFSS       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L__main9
	GOTO        L_main4
L__main9:
;Operadores2.c,20 :: 		PORTC.RC0 = 1;
	BSF         PORTC+0, 0 
;Operadores2.c,21 :: 		PORTC.RC1 = 0;
	BCF         PORTC+0, 1 
;Operadores2.c,23 :: 		}
	GOTO        L_main5
L_main4:
;Operadores2.c,25 :: 		PORTC.RC0 = 0;
	BCF         PORTC+0, 0 
;Operadores2.c,26 :: 		PORTC.RC1 = 0;
	BCF         PORTC+0, 1 
;Operadores2.c,28 :: 		}
L_main5:
;Operadores2.c,30 :: 		if(n1>=3)
	MOVLW       128
	XORWF       _n1+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main11
	MOVLW       3
	SUBWF       _n1+0, 0 
L__main11:
	BTFSS       STATUS+0, 0 
	GOTO        L_main6
;Operadores2.c,31 :: 		LATD.F0 = 1;
	BSF         LATD+0, 0 
	GOTO        L_main7
L_main6:
;Operadores2.c,33 :: 		LATD.F0 = 0;
	BCF         LATD+0, 0 
L_main7:
;Operadores2.c,36 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
;Operadores2.c,37 :: 		}
	GOTO        L_main0
;Operadores2.c,39 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
