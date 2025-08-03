
_main:

;Menejo_bits.c,2 :: 		void main() {
;Menejo_bits.c,3 :: 		OSCCON = 0x72;
	MOVLW       114
	MOVWF       OSCCON+0 
;Menejo_bits.c,4 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Menejo_bits.c,5 :: 		TRISC  = 0x00;
	CLRF        TRISC+0 
;Menejo_bits.c,6 :: 		TRISD  = 0x00;
	CLRF        TRISD+0 
;Menejo_bits.c,10 :: 		while(1){
L_main0:
;Menejo_bits.c,11 :: 		LATD = iter;
	MOVF        _iter+0, 0 
	MOVWF       LATD+0 
;Menejo_bits.c,12 :: 		LATC = iter>>8;
	MOVF        _iter+1, 0 
	MOVWF       R0 
	MOVLW       0
	BTFSC       _iter+1, 7 
	MOVLW       255
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       LATC+0 
;Menejo_bits.c,13 :: 		if(i<=11){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main7
	MOVF        _i+0, 0 
	SUBLW       11
L__main7:
	BTFSS       STATUS+0, 0 
	GOTO        L_main2
;Menejo_bits.c,14 :: 		iter = iter | (valor1<<i);
	MOVF        _i+0, 0 
	MOVWF       R2 
	MOVF        _valor1+0, 0 
	MOVWF       R0 
	MOVF        _valor1+1, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__main8:
	BZ          L__main9
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__main8
L__main9:
	MOVF        R0, 0 
	IORWF       _iter+0, 1 
	MOVF        R1, 0 
	IORWF       _iter+1, 1 
;Menejo_bits.c,15 :: 		}
	GOTO        L_main3
L_main2:
;Menejo_bits.c,17 :: 		iter = iter & (valor2>>(i-11));
	MOVLW       11
	SUBWF       _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _i+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       R2 
	MOVF        _valor2+0, 0 
	MOVWF       R0 
	MOVF        _valor2+1, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__main10:
	BZ          L__main11
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	BTFSC       R1, 6 
	BSF         R1, 7 
	ADDLW       255
	GOTO        L__main10
L__main11:
	MOVF        R0, 0 
	ANDWF       _iter+0, 1 
	MOVF        R1, 0 
	ANDWF       _iter+1, 1 
;Menejo_bits.c,18 :: 		}
L_main3:
;Menejo_bits.c,19 :: 		i++;
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Menejo_bits.c,20 :: 		if(i>22)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main12
	MOVF        _i+0, 0 
	SUBLW       22
L__main12:
	BTFSC       STATUS+0, 0 
	GOTO        L_main4
;Menejo_bits.c,21 :: 		i=0;
	CLRF        _i+0 
	CLRF        _i+1 
L_main4:
;Menejo_bits.c,22 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
;Menejo_bits.c,26 :: 		}
	GOTO        L_main0
;Menejo_bits.c,29 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
