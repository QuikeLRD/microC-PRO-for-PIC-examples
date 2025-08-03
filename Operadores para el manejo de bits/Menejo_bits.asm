
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
;decodificador_7seg.h,35 :: 		return (127-var);
	MOVF        R1, 0 
	SUBLW       127
	MOVWF       R0 
;decodificador_7seg.h,36 :: 		}
L_end_deco_ac:
	RETURN      0
; end of _deco_ac

_main:

;Menejo_bits.c,4 :: 		void main() {
;Menejo_bits.c,5 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Menejo_bits.c,6 :: 		TRISA  = 0x00;
	CLRF        TRISA+0 
;Menejo_bits.c,7 :: 		TRISD  = 0x00;
	CLRF        TRISD+0 
;Menejo_bits.c,8 :: 		TRISB  = 0xFF;
	MOVLW       255
	MOVWF       TRISB+0 
;Menejo_bits.c,10 :: 		LATD = dat^dat2;
	MOVF        _dat2+0, 0 
	XORWF       _dat+0, 0 
	MOVWF       LATD+0 
;Menejo_bits.c,11 :: 		LATA = ~deco_cc(3);
	MOVLW       3
	MOVWF       FARG_deco_cc_num+0 
	CALL        _deco_cc+0, 0
	COMF        R0, 0 
	MOVWF       LATA+0 
;Menejo_bits.c,15 :: 		while(1){
L_main24:
;Menejo_bits.c,17 :: 		LATA = deco_ac(PORTB&0x0F);  //Mover con nibble 1
	MOVLW       15
	ANDWF       PORTB+0, 0 
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       LATA+0 
;Menejo_bits.c,20 :: 		}
	GOTO        L_main24
;Menejo_bits.c,23 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
