
_deco_cc:

;decodificador_7seg.h,1 :: 		char deco_cc(char num){
;decodificador_7seg.h,4 :: 		switch(num){
	GOTO        L_deco_cc0
;decodificador_7seg.h,5 :: 		case 0: var = 63; break;
L_deco_cc2:
	MOVLW       63
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,6 :: 		case 1: var =  6; break;
L_deco_cc3:
	MOVLW       6
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,7 :: 		case 2: var = 91; break;
L_deco_cc4:
	MOVLW       91
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,8 :: 		case 3: var = 79; break;
L_deco_cc5:
	MOVLW       79
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,9 :: 		case 4: var =102; break;
L_deco_cc6:
	MOVLW       102
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,10 :: 		case 5: var =109; break;
L_deco_cc7:
	MOVLW       109
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,11 :: 		case 6: var =125; break;
L_deco_cc8:
	MOVLW       125
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,12 :: 		case 7: var =  7; break;
L_deco_cc9:
	MOVLW       7
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,13 :: 		case 8: var =127; break;
L_deco_cc10:
	MOVLW       127
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,14 :: 		case 9: var =103; break;
L_deco_cc11:
	MOVLW       103
	MOVWF       R1 
	GOTO        L_deco_cc1
;decodificador_7seg.h,16 :: 		}
L_deco_cc0:
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc2
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc3
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc4
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc5
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc6
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc7
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc8
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc9
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc10
	MOVF        FARG_deco_cc_num+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_cc11
L_deco_cc1:
;decodificador_7seg.h,17 :: 		return var;
	MOVF        R1, 0 
	MOVWF       R0 
;decodificador_7seg.h,18 :: 		}
L_end_deco_cc:
	RETURN      0
; end of _deco_cc

_deco_ac:

;decodificador_7seg.h,19 :: 		char deco_ac(char num){
;decodificador_7seg.h,22 :: 		switch(num){
	GOTO        L_deco_ac12
;decodificador_7seg.h,23 :: 		case 0: var = 63; break;
L_deco_ac14:
	MOVLW       63
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,24 :: 		case 1: var =  6; break;
L_deco_ac15:
	MOVLW       6
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,25 :: 		case 2: var = 91; break;
L_deco_ac16:
	MOVLW       91
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,26 :: 		case 3: var = 79; break;
L_deco_ac17:
	MOVLW       79
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,27 :: 		case 4: var =102; break;
L_deco_ac18:
	MOVLW       102
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,28 :: 		case 5: var =109; break;
L_deco_ac19:
	MOVLW       109
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,29 :: 		case 6: var =125; break;
L_deco_ac20:
	MOVLW       125
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,30 :: 		case 7: var =  7; break;
L_deco_ac21:
	MOVLW       7
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,31 :: 		case 8: var =127; break;
L_deco_ac22:
	MOVLW       127
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,32 :: 		case 9: var =103; break;
L_deco_ac23:
	MOVLW       103
	MOVWF       R1 
	GOTO        L_deco_ac13
;decodificador_7seg.h,34 :: 		}
L_deco_ac12:
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac14
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac15
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac16
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac17
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac18
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac19
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac20
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac21
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac22
	MOVF        FARG_deco_ac_num+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_deco_ac23
L_deco_ac13:
;decodificador_7seg.h,35 :: 		return (255-var);
	MOVF        R1, 0 
	SUBLW       255
	MOVWF       R0 
;decodificador_7seg.h,36 :: 		}
L_end_deco_ac:
	RETURN      0
; end of _deco_ac

_multiplex:

;Display_multiplex.c,12 :: 		void multiplex(){
;Display_multiplex.c,13 :: 		D1 =1; D2=0; D3=0; D4=0;
	BSF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BCF         PORTA+0, 2 
	BCF         PORTA+0, 3 
;Display_multiplex.c,14 :: 		datos = deco_ac(minutos/10);
	MOVLW       10
	MOVWF       R4 
	MOVF        _minutos+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Display_multiplex.c,15 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_multiplex24:
	DECFSZ      R13, 1, 1
	BRA         L_multiplex24
	DECFSZ      R12, 1, 1
	BRA         L_multiplex24
	NOP
	NOP
;Display_multiplex.c,16 :: 		D1 =0; D2=1; D3=0; D4=0;
	BCF         PORTA+0, 0 
	BSF         PORTA+0, 1 
	BCF         PORTA+0, 2 
	BCF         PORTA+0, 3 
;Display_multiplex.c,17 :: 		datos = deco_ac(minutos%10);
	MOVLW       10
	MOVWF       R4 
	MOVF        _minutos+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Display_multiplex.c,18 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_multiplex25:
	DECFSZ      R13, 1, 1
	BRA         L_multiplex25
	DECFSZ      R12, 1, 1
	BRA         L_multiplex25
	NOP
	NOP
;Display_multiplex.c,20 :: 		D1 =0; D2=0; D3=1; D4=0;
	BCF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BSF         PORTA+0, 2 
	BCF         PORTA+0, 3 
;Display_multiplex.c,21 :: 		datos = deco_ac(segundos/10);
	MOVLW       10
	MOVWF       R4 
	MOVF        _segundos+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Display_multiplex.c,22 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_multiplex26:
	DECFSZ      R13, 1, 1
	BRA         L_multiplex26
	DECFSZ      R12, 1, 1
	BRA         L_multiplex26
	NOP
	NOP
;Display_multiplex.c,23 :: 		D1 =0; D2=0; D3=0; D4=1;
	BCF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BCF         PORTA+0, 2 
	BSF         PORTA+0, 3 
;Display_multiplex.c,24 :: 		datos = deco_ac(segundos%10);
	MOVLW       10
	MOVWF       R4 
	MOVF        _segundos+0, 0 
	MOVWF       R0 
	CALL        _Div_8X8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Display_multiplex.c,25 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_multiplex27:
	DECFSZ      R13, 1, 1
	BRA         L_multiplex27
	DECFSZ      R12, 1, 1
	BRA         L_multiplex27
	NOP
	NOP
;Display_multiplex.c,28 :: 		}
L_end_multiplex:
	RETURN      0
; end of _multiplex

_main:

;Display_multiplex.c,30 :: 		void main() {
;Display_multiplex.c,31 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Display_multiplex.c,32 :: 		TRISA  = 0x00;
	CLRF        TRISA+0 
;Display_multiplex.c,33 :: 		TRISD  = 0x00;
	CLRF        TRISD+0 
;Display_multiplex.c,35 :: 		TRISB.RB0 = 1;
	BSF         TRISB+0, 0 
;Display_multiplex.c,36 :: 		TRISB.RB1 = 1;
	BSF         TRISB+0, 1 
;Display_multiplex.c,38 :: 		D1=D2=D3=D4=0;
	BCF         PORTA+0, 3 
	BTFSC       PORTA+0, 3 
	GOTO        L__main37
	BCF         PORTA+0, 2 
	GOTO        L__main38
L__main37:
	BSF         PORTA+0, 2 
L__main38:
	BTFSC       PORTA+0, 2 
	GOTO        L__main39
	BCF         PORTA+0, 1 
	GOTO        L__main40
L__main39:
	BSF         PORTA+0, 1 
L__main40:
	BTFSC       PORTA+0, 1 
	GOTO        L__main41
	BCF         PORTA+0, 0 
	GOTO        L__main42
L__main41:
	BSF         PORTA+0, 0 
L__main42:
;Display_multiplex.c,40 :: 		while(1){
L_main28:
;Display_multiplex.c,41 :: 		if(contador==25){
	MOVF        _contador+0, 0 
	XORLW       25
	BTFSS       STATUS+0, 2 
	GOTO        L_main30
;Display_multiplex.c,42 :: 		segundos++;
	INCF        _segundos+0, 1 
;Display_multiplex.c,43 :: 		if(segundos>59){
	MOVF        _segundos+0, 0 
	SUBLW       59
	BTFSC       STATUS+0, 0 
	GOTO        L_main31
;Display_multiplex.c,44 :: 		segundos=0;
	CLRF        _segundos+0 
;Display_multiplex.c,45 :: 		minutos++;
	INCF        _minutos+0, 1 
;Display_multiplex.c,46 :: 		if(minutos>59)
	MOVF        _minutos+0, 0 
	SUBLW       59
	BTFSC       STATUS+0, 0 
	GOTO        L_main32
;Display_multiplex.c,47 :: 		minutos=0;
	CLRF        _minutos+0 
L_main32:
;Display_multiplex.c,48 :: 		}
L_main31:
;Display_multiplex.c,49 :: 		contador=-1;
	MOVLW       255
	MOVWF       _contador+0 
;Display_multiplex.c,50 :: 		}
L_main30:
;Display_multiplex.c,51 :: 		multiplex();
	CALL        _multiplex+0, 0
;Display_multiplex.c,52 :: 		contador++;
	INCF        _contador+0, 1 
;Display_multiplex.c,53 :: 		}
	GOTO        L_main28
;Display_multiplex.c,58 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
