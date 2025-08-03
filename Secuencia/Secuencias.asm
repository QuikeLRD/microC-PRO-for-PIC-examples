
_Sec1:

;Secuencias.c,2 :: 		void Sec1(){
;Secuencias.c,3 :: 		LATD = 0b00000001;
	MOVLW       1
	MOVWF       LATD+0 
;Secuencias.c,4 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec10:
	DECFSZ      R13, 1, 1
	BRA         L_Sec10
	DECFSZ      R12, 1, 1
	BRA         L_Sec10
	DECFSZ      R11, 1, 1
	BRA         L_Sec10
	NOP
;Secuencias.c,5 :: 		LATD = 0b00000010;
	MOVLW       2
	MOVWF       LATD+0 
;Secuencias.c,6 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec11:
	DECFSZ      R13, 1, 1
	BRA         L_Sec11
	DECFSZ      R12, 1, 1
	BRA         L_Sec11
	DECFSZ      R11, 1, 1
	BRA         L_Sec11
	NOP
;Secuencias.c,7 :: 		LATD = 0b00000100;
	MOVLW       4
	MOVWF       LATD+0 
;Secuencias.c,8 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec12:
	DECFSZ      R13, 1, 1
	BRA         L_Sec12
	DECFSZ      R12, 1, 1
	BRA         L_Sec12
	DECFSZ      R11, 1, 1
	BRA         L_Sec12
	NOP
;Secuencias.c,9 :: 		LATD = 0b00001000;
	MOVLW       8
	MOVWF       LATD+0 
;Secuencias.c,10 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec13:
	DECFSZ      R13, 1, 1
	BRA         L_Sec13
	DECFSZ      R12, 1, 1
	BRA         L_Sec13
	DECFSZ      R11, 1, 1
	BRA         L_Sec13
	NOP
;Secuencias.c,11 :: 		LATD = 0b00010000;
	MOVLW       16
	MOVWF       LATD+0 
;Secuencias.c,12 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec14:
	DECFSZ      R13, 1, 1
	BRA         L_Sec14
	DECFSZ      R12, 1, 1
	BRA         L_Sec14
	DECFSZ      R11, 1, 1
	BRA         L_Sec14
	NOP
;Secuencias.c,13 :: 		LATD = 0b00100000;
	MOVLW       32
	MOVWF       LATD+0 
;Secuencias.c,14 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec15:
	DECFSZ      R13, 1, 1
	BRA         L_Sec15
	DECFSZ      R12, 1, 1
	BRA         L_Sec15
	DECFSZ      R11, 1, 1
	BRA         L_Sec15
	NOP
;Secuencias.c,15 :: 		LATD = 0b01000000;
	MOVLW       64
	MOVWF       LATD+0 
;Secuencias.c,16 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec16:
	DECFSZ      R13, 1, 1
	BRA         L_Sec16
	DECFSZ      R12, 1, 1
	BRA         L_Sec16
	DECFSZ      R11, 1, 1
	BRA         L_Sec16
	NOP
;Secuencias.c,17 :: 		LATD = 0b10000000;
	MOVLW       128
	MOVWF       LATD+0 
;Secuencias.c,18 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec17:
	DECFSZ      R13, 1, 1
	BRA         L_Sec17
	DECFSZ      R12, 1, 1
	BRA         L_Sec17
	DECFSZ      R11, 1, 1
	BRA         L_Sec17
	NOP
;Secuencias.c,19 :: 		}
L_end_Sec1:
	RETURN      0
; end of _Sec1

_Sec2:

;Secuencias.c,20 :: 		void Sec2(){
;Secuencias.c,21 :: 		LATD = 0XF0;
	MOVLW       240
	MOVWF       LATD+0 
;Secuencias.c,22 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec28:
	DECFSZ      R13, 1, 1
	BRA         L_Sec28
	DECFSZ      R12, 1, 1
	BRA         L_Sec28
	DECFSZ      R11, 1, 1
	BRA         L_Sec28
	NOP
;Secuencias.c,23 :: 		LATD = 0X0F;
	MOVLW       15
	MOVWF       LATD+0 
;Secuencias.c,24 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec29:
	DECFSZ      R13, 1, 1
	BRA         L_Sec29
	DECFSZ      R12, 1, 1
	BRA         L_Sec29
	DECFSZ      R11, 1, 1
	BRA         L_Sec29
	NOP
;Secuencias.c,25 :: 		}
L_end_Sec2:
	RETURN      0
; end of _Sec2

_Sec3:

;Secuencias.c,26 :: 		void Sec3(){
;Secuencias.c,27 :: 		LATD = 0b01010101;
	MOVLW       85
	MOVWF       LATD+0 
;Secuencias.c,28 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec310:
	DECFSZ      R13, 1, 1
	BRA         L_Sec310
	DECFSZ      R12, 1, 1
	BRA         L_Sec310
	DECFSZ      R11, 1, 1
	BRA         L_Sec310
	NOP
;Secuencias.c,29 :: 		LATD = 0b10101010;
	MOVLW       170
	MOVWF       LATD+0 
;Secuencias.c,30 :: 		delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_Sec311:
	DECFSZ      R13, 1, 1
	BRA         L_Sec311
	DECFSZ      R12, 1, 1
	BRA         L_Sec311
	DECFSZ      R11, 1, 1
	BRA         L_Sec311
	NOP
;Secuencias.c,31 :: 		}
L_end_Sec3:
	RETURN      0
; end of _Sec3

_main:

;Secuencias.c,34 :: 		void main() {
;Secuencias.c,36 :: 		TRISD = 0b00000000;
	CLRF        TRISD+0 
;Secuencias.c,37 :: 		LATD = 0x00;
	CLRF        LATD+0 
;Secuencias.c,38 :: 		while(1){
L_main12:
;Secuencias.c,39 :: 		for (i=0; i<=6; i++){
	CLRF        _i+0 
	CLRF        _i+1 
L_main14:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main27
	MOVF        _i+0, 0 
	SUBLW       6
L__main27:
	BTFSS       STATUS+0, 0 
	GOTO        L_main15
;Secuencias.c,40 :: 		Sec1();
	CALL        _Sec1+0, 0
;Secuencias.c,39 :: 		for (i=0; i<=6; i++){
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Secuencias.c,41 :: 		}
	GOTO        L_main14
L_main15:
;Secuencias.c,42 :: 		for(i=0; i<=23; i++){
	CLRF        _i+0 
	CLRF        _i+1 
L_main17:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main28
	MOVF        _i+0, 0 
	SUBLW       23
L__main28:
	BTFSS       STATUS+0, 0 
	GOTO        L_main18
;Secuencias.c,43 :: 		Sec2();
	CALL        _Sec2+0, 0
;Secuencias.c,42 :: 		for(i=0; i<=23; i++){
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Secuencias.c,44 :: 		}
	GOTO        L_main17
L_main18:
;Secuencias.c,45 :: 		for(i=0; i<=23; i++){
	CLRF        _i+0 
	CLRF        _i+1 
L_main20:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main29
	MOVF        _i+0, 0 
	SUBLW       23
L__main29:
	BTFSS       STATUS+0, 0 
	GOTO        L_main21
;Secuencias.c,46 :: 		Sec3();
	CALL        _Sec3+0, 0
;Secuencias.c,45 :: 		for(i=0; i<=23; i++){
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Secuencias.c,47 :: 		}
	GOTO        L_main20
L_main21:
;Secuencias.c,49 :: 		}
	GOTO        L_main12
;Secuencias.c,51 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
