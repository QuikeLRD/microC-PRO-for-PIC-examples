
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

;Display.c,4 :: 		void main() {
;Display.c,6 :: 		ADCON1 = 0x0F; //Todas las entradas I/O salidas son digitales.
	MOVLW       15
	MOVWF       ADCON1+0 
;Display.c,7 :: 		TRISA.RA0 = 1;
	BSF         TRISA+0, 0 
;Display.c,8 :: 		TRISA.RA1 = 1;
	BSF         TRISA+0, 1 
;Display.c,9 :: 		TRISB = 0x00;
	CLRF        TRISB+0 
;Display.c,10 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;Display.c,13 :: 		while(1){
L_main24:
;Display.c,15 :: 		if(RA0_bit){
	BTFSS       RA0_bit+0, BitPos(RA0_bit+0) 
	GOTO        L_main26
;Display.c,16 :: 		while(RA0_bit);      //Agregamos antirebote
L_main27:
	BTFSS       RA0_bit+0, BitPos(RA0_bit+0) 
	GOTO        L_main28
	GOTO        L_main27
L_main28:
;Display.c,17 :: 		tiempo = tiempo + 100;
	MOVLW       100
	ADDWF       _tiempo+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _tiempo+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _tiempo+0 
	MOVF        R2, 0 
	MOVWF       _tiempo+1 
;Display.c,18 :: 		if(tiempo > 1000)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main39
	MOVF        R1, 0 
	SUBLW       232
L__main39:
	BTFSC       STATUS+0, 0 
	GOTO        L_main29
;Display.c,19 :: 		tiempo = 1000;
	MOVLW       232
	MOVWF       _tiempo+0 
	MOVLW       3
	MOVWF       _tiempo+1 
L_main29:
;Display.c,20 :: 		}
L_main26:
;Display.c,21 :: 		if(!RA1_bit){
	BTFSC       RA1_bit+0, BitPos(RA1_bit+0) 
	GOTO        L_main30
;Display.c,22 :: 		while(!RA1_bit);
L_main31:
	BTFSC       RA1_bit+0, BitPos(RA1_bit+0) 
	GOTO        L_main32
	GOTO        L_main31
L_main32:
;Display.c,23 :: 		tiempo = tiempo - 100;
	MOVLW       100
	SUBWF       _tiempo+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      _tiempo+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       _tiempo+0 
	MOVF        R2, 0 
	MOVWF       _tiempo+1 
;Display.c,24 :: 		if(tiempo < 200)
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main40
	MOVLW       200
	SUBWF       R1, 0 
L__main40:
	BTFSC       STATUS+0, 0 
	GOTO        L_main33
;Display.c,25 :: 		tiempo = 200;
	MOVLW       200
	MOVWF       _tiempo+0 
	MOVLW       0
	MOVWF       _tiempo+1 
L_main33:
;Display.c,26 :: 		}
L_main30:
;Display.c,34 :: 		LATD = deco_cc(digito1);
	MOVF        _digito1+0, 0 
	MOVWF       FARG_deco_cc_num+0 
	CALL        _deco_cc+0, 0
	MOVF        R0, 0 
	MOVWF       LATD+0 
;Display.c,35 :: 		LATB = deco_ac(digito2);
	MOVF        _digito2+0, 0 
	MOVWF       FARG_deco_ac_num+0 
	CALL        _deco_ac+0, 0
	MOVF        R0, 0 
	MOVWF       LATB+0 
;Display.c,36 :: 		Vdelay_ms(tiempo);
	MOVF        _tiempo+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        _tiempo+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;Display.c,37 :: 		digito1++;
	INFSNZ      _digito1+0, 1 
	INCF        _digito1+1, 1 
;Display.c,38 :: 		digito2--;
	MOVLW       1
	SUBWF       _digito2+0, 1 
	MOVLW       0
	SUBWFB      _digito2+1, 1 
;Display.c,39 :: 		if(digito1>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _digito1+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main41
	MOVF        _digito1+0, 0 
	SUBLW       9
L__main41:
	BTFSC       STATUS+0, 0 
	GOTO        L_main34
;Display.c,40 :: 		digito1 =0;
	CLRF        _digito1+0 
	CLRF        _digito1+1 
L_main34:
;Display.c,41 :: 		if(digito2<0)
	MOVLW       128
	XORWF       _digito2+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main42
	MOVLW       0
	SUBWF       _digito2+0, 0 
L__main42:
	BTFSC       STATUS+0, 0 
	GOTO        L_main35
;Display.c,42 :: 		digito2 =9;
	MOVLW       9
	MOVWF       _digito2+0 
	MOVLW       0
	MOVWF       _digito2+1 
L_main35:
;Display.c,46 :: 		}
	GOTO        L_main24
;Display.c,49 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
