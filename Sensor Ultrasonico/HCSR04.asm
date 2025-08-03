
_getDistancia:

;HCSR04.c,5 :: 		unsigned int getDistancia(){
;HCSR04.c,6 :: 		unsigned int contador= 0;
	CLRF        getDistancia_contador_L0+0 
	CLRF        getDistancia_contador_L0+1 
;HCSR04.c,8 :: 		pinTrig = 1;
	BSF         RD2_bit+0, BitPos(RD2_bit+0) 
;HCSR04.c,9 :: 		delay_us(10);
	MOVLW       16
	MOVWF       R13, 0
L_getDistancia0:
	DECFSZ      R13, 1, 1
	BRA         L_getDistancia0
	NOP
;HCSR04.c,10 :: 		pinTrig = 0;
	BCF         RD2_bit+0, BitPos(RD2_bit+0) 
;HCSR04.c,12 :: 		while(PinEcho ==0);
L_getDistancia1:
	BTFSC       RD3_bit+0, BitPos(RD3_bit+0) 
	GOTO        L_getDistancia2
	GOTO        L_getDistancia1
L_getDistancia2:
;HCSR04.c,13 :: 		while(PinEcho ==1){
L_getDistancia3:
	BTFSS       RD3_bit+0, BitPos(RD3_bit+0) 
	GOTO        L_getDistancia4
;HCSR04.c,14 :: 		contador++;
	INFSNZ      getDistancia_contador_L0+0, 1 
	INCF        getDistancia_contador_L0+1, 1 
;HCSR04.c,15 :: 		delay_us(58);
	MOVLW       96
	MOVWF       R13, 0
L_getDistancia5:
	DECFSZ      R13, 1, 1
	BRA         L_getDistancia5
	NOP
;HCSR04.c,16 :: 		}
	GOTO        L_getDistancia3
L_getDistancia4:
;HCSR04.c,17 :: 		return(contador);
	MOVF        getDistancia_contador_L0+0, 0 
	MOVWF       R0 
	MOVF        getDistancia_contador_L0+1, 0 
	MOVWF       R1 
;HCSR04.c,18 :: 		}
L_end_getDistancia:
	RETURN      0
; end of _getDistancia

_main:

;HCSR04.c,21 :: 		void main() {
;HCSR04.c,22 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;HCSR04.c,23 :: 		DIR_PinTrig = OUT;
	BCF         TRISD2_bit+0, BitPos(TRISD2_bit+0) 
;HCSR04.c,24 :: 		DIR_PinEcho = IN;
	BSF         TRISD3_bit+0, BitPos(TRISD3_bit+0) 
;HCSR04.c,27 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;HCSR04.c,28 :: 		Lcd_cmd(12);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;HCSR04.c,29 :: 		Lcd_Out(1,1,"    HCSR04 ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_HCSR04+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_HCSR04+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;HCSR04.c,32 :: 		while(1) {
L_main6:
;HCSR04.c,33 :: 		distancia = getDistancia();
	CALL        _getDistancia+0, 0
	MOVF        R0, 0 
	MOVWF       _distancia+0 
	MOVF        R1, 0 
	MOVWF       _distancia+1 
;HCSR04.c,34 :: 		sprintf(straux,"distancia: %04d",distancia);
	MOVLW       _straux+0
	MOVWF       FARG_sprintf_wh+0 
	MOVLW       hi_addr(_straux+0)
	MOVWF       FARG_sprintf_wh+1 
	MOVLW       ?lstr_2_HCSR04+0
	MOVWF       FARG_sprintf_f+0 
	MOVLW       hi_addr(?lstr_2_HCSR04+0)
	MOVWF       FARG_sprintf_f+1 
	MOVLW       higher_addr(?lstr_2_HCSR04+0)
	MOVWF       FARG_sprintf_f+2 
	MOVF        R0, 0 
	MOVWF       FARG_sprintf_wh+5 
	MOVF        R1, 0 
	MOVWF       FARG_sprintf_wh+6 
	CALL        _sprintf+0, 0
;HCSR04.c,35 :: 		Lcd_Out(2,1,straux);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _straux+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_straux+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;HCSR04.c,36 :: 		delay_ms(30);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
;HCSR04.c,37 :: 		}
	GOTO        L_main6
;HCSR04.c,38 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
