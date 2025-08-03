
_main:

;ADCON1.c,2 :: 		void main() {
;ADCON1.c,4 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;ADCON1.c,5 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;ADCON1.c,8 :: 		ADCON1 = 14;
	MOVLW       14
	MOVWF       ADCON1+0 
;ADCON1.c,10 :: 		CHS3_bit =0;
	BCF         CHS3_bit+0, BitPos(CHS3_bit+0) 
;ADCON1.c,11 :: 		CHS2_bit =0;
	BCF         CHS2_bit+0, BitPos(CHS2_bit+0) 
;ADCON1.c,12 :: 		CHS1_bit =0;
	BCF         CHS1_bit+0, BitPos(CHS1_bit+0) 
;ADCON1.c,13 :: 		CHS0_bit =0;
	BCF         CHS0_bit+0, BitPos(CHS0_bit+0) 
;ADCON1.c,16 :: 		ACQT2_bit = 0;
	BCF         ACQT2_bit+0, BitPos(ACQT2_bit+0) 
;ADCON1.c,17 :: 		ACQT1_bit = 1;
	BSF         ACQT1_bit+0, BitPos(ACQT1_bit+0) 
;ADCON1.c,18 :: 		ACQT0_bit = 0;
	BCF         ACQT0_bit+0, BitPos(ACQT0_bit+0) 
;ADCON1.c,20 :: 		ADCS2_bit = 1;
	BSF         ADCS2_bit+0, BitPos(ADCS2_bit+0) 
;ADCON1.c,21 :: 		ADCS1_bit = 0;
	BCF         ADCS1_bit+0, BitPos(ADCS1_bit+0) 
;ADCON1.c,22 :: 		ADCS0_bit = 0;
	BCF         ADCS0_bit+0, BitPos(ADCS0_bit+0) 
;ADCON1.c,25 :: 		ADFM_bit = 1;
	BSF         ADFM_bit+0, BitPos(ADFM_bit+0) 
;ADCON1.c,27 :: 		ADON_bit = 1;
	BSF         ADON_bit+0, BitPos(ADON_bit+0) 
;ADCON1.c,29 :: 		while(1){
L_main0:
;ADCON1.c,30 :: 		GO_DONE_bit = 1;
	BSF         GO_DONE_bit+0, BitPos(GO_DONE_bit+0) 
;ADCON1.c,32 :: 		while(GO_DONE_bit ==1);
L_main2:
	BTFSS       GO_DONE_bit+0, BitPos(GO_DONE_bit+0) 
	GOTO        L_main3
	GOTO        L_main2
L_main3:
;ADCON1.c,33 :: 		LATC = ADRESH;
	MOVF        ADRESH+0, 0 
	MOVWF       LATC+0 
;ADCON1.c,34 :: 		LATD = ADRESL;
	MOVF        ADRESL+0, 0 
	MOVWF       LATD+0 
;ADCON1.c,36 :: 		delay_us(20);
	MOVLW       6
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	NOP
;ADCON1.c,38 :: 		}
	GOTO        L_main0
;ADCON1.c,40 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
