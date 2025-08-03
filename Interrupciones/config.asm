
_decoAC:

;config.c,2 :: 		char decoAC(unsigned char valor){
;config.c,5 :: 		switch(valor){
	GOTO        L_decoAC0
;config.c,6 :: 		case 0: deco = 192; break;
L_decoAC2:
	MOVLW       192
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,7 :: 		case 1: deco = 249; break;
L_decoAC3:
	MOVLW       249
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,8 :: 		case 2: deco = 164; break;
L_decoAC4:
	MOVLW       164
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,9 :: 		case 3: deco = 176; break;
L_decoAC5:
	MOVLW       176
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,10 :: 		case 4: deco = 153; break;
L_decoAC6:
	MOVLW       153
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,11 :: 		case 5: deco = 146; break;
L_decoAC7:
	MOVLW       146
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,12 :: 		case 6: deco = 130; break;
L_decoAC8:
	MOVLW       130
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,13 :: 		case 7: deco = 248; break;
L_decoAC9:
	MOVLW       248
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,14 :: 		case 8: deco = 128; break;
L_decoAC10:
	MOVLW       128
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,15 :: 		case 9: deco = 152; break;
L_decoAC11:
	MOVLW       152
	MOVWF       R1 
	GOTO        L_decoAC1
;config.c,16 :: 		}
L_decoAC0:
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC2
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC3
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC4
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC5
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC6
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC7
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC8
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC9
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC10
	MOVF        FARG_decoAC_valor+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_decoAC11
L_decoAC1:
;config.c,17 :: 		return deco;
	MOVF        R1, 0 
	MOVWF       R0 
;config.c,18 :: 		}
L_end_decoAC:
	RETURN      0
; end of _decoAC

_secuencia:

;config.c,19 :: 		void secuencia(int te){
;config.c,21 :: 		LATD = 0b00000001;
	MOVLW       1
	MOVWF       LATD+0 
;config.c,22 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,23 :: 		LATD = 0b00000011;
	MOVLW       3
	MOVWF       LATD+0 
;config.c,24 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,25 :: 		LATD = 0b00000111;
	MOVLW       7
	MOVWF       LATD+0 
;config.c,26 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,27 :: 		LATD = 0b00001111;
	MOVLW       15
	MOVWF       LATD+0 
;config.c,28 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,29 :: 		LATD = 0b00011111;
	MOVLW       31
	MOVWF       LATD+0 
;config.c,30 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,31 :: 		LATD = 0b00111111;
	MOVLW       63
	MOVWF       LATD+0 
;config.c,32 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,33 :: 		LATD = 0b01111111;
	MOVLW       127
	MOVWF       LATD+0 
;config.c,34 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,35 :: 		LATD = 0b11111111;
	MOVLW       255
	MOVWF       LATD+0 
;config.c,36 :: 		vdelay_ms(te);
	MOVF        FARG_secuencia_te+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        FARG_secuencia_te+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;config.c,38 :: 		}
L_end_secuencia:
	RETURN      0
; end of _secuencia
