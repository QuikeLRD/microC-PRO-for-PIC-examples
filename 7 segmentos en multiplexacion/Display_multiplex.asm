
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

_main:

;Display_multiplex.c,11 :: 		void main() {
;Display_multiplex.c,12 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Display_multiplex.c,13 :: 		TRISA  = 0x00;
	CLRF        TRISA+0 
;Display_multiplex.c,14 :: 		TRISD  = 0x00;
	CLRF        TRISD+0 
;Display_multiplex.c,16 :: 		while(1){
L_main24:
;Display_multiplex.c,19 :: 		D1 =1; D2 =0; D3 =0; D4=0;
	BSF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BCF         PORTA+0, 2 
	BCF         PORTA+0, 3 
;Display_multiplex.c,20 :: 		LATD = deco_ac(2);
	MOVLW       2
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       LATD+0 
;Display_multiplex.c,21 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_main26:
	DECFSZ      R13, 1, 1
	BRA         L_main26
	DECFSZ      R12, 1, 1
	BRA         L_main26
	NOP
	NOP
;Display_multiplex.c,23 :: 		D1 =0; D2 =1; D3 =0; D4=0;
	BCF         PORTA+0, 0 
	BSF         PORTA+0, 1 
	BCF         PORTA+0, 2 
	BCF         PORTA+0, 3 
;Display_multiplex.c,24 :: 		LATD = deco_ac(8);
	MOVLW       8
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       LATD+0 
;Display_multiplex.c,25 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 1
	BRA         L_main27
	DECFSZ      R12, 1, 1
	BRA         L_main27
	NOP
	NOP
;Display_multiplex.c,27 :: 		D1 =0; D2 =0; D3 =1; D4=0;
	BCF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BSF         PORTA+0, 2 
	BCF         PORTA+0, 3 
;Display_multiplex.c,28 :: 		LATD = deco_ac(1);
	MOVLW       1
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       LATD+0 
;Display_multiplex.c,29 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_main28:
	DECFSZ      R13, 1, 1
	BRA         L_main28
	DECFSZ      R12, 1, 1
	BRA         L_main28
	NOP
	NOP
;Display_multiplex.c,31 :: 		D1 =0; D2 =0; D3 =0; D4=1;
	BCF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BCF         PORTA+0, 2 
	BSF         PORTA+0, 3 
;Display_multiplex.c,32 :: 		LATD = deco_ac(6);
	MOVLW       6
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       LATD+0 
;Display_multiplex.c,33 :: 		delay_ms(tiempo);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_main29:
	DECFSZ      R13, 1, 1
	BRA         L_main29
	DECFSZ      R12, 1, 1
	BRA         L_main29
	NOP
	NOP
;Display_multiplex.c,35 :: 		}
	GOTO        L_main24
;Display_multiplex.c,38 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
