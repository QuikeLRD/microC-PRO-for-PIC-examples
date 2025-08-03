
_my_ADC_Init:

;ADCON1.c,3 :: 		void my_ADC_Init(){
;ADCON1.c,6 :: 		ACQT2_bit = 0;
	BCF         ACQT2_bit+0, BitPos(ACQT2_bit+0) 
;ADCON1.c,7 :: 		ACQT1_bit = 1;
	BSF         ACQT1_bit+0, BitPos(ACQT1_bit+0) 
;ADCON1.c,8 :: 		ACQT0_bit = 0;
	BCF         ACQT0_bit+0, BitPos(ACQT0_bit+0) 
;ADCON1.c,10 :: 		ADCS2_bit = 1;
	BSF         ADCS2_bit+0, BitPos(ADCS2_bit+0) 
;ADCON1.c,11 :: 		ADCS1_bit = 0;
	BCF         ADCS1_bit+0, BitPos(ADCS1_bit+0) 
;ADCON1.c,12 :: 		ADCS0_bit = 0;
	BCF         ADCS0_bit+0, BitPos(ADCS0_bit+0) 
;ADCON1.c,14 :: 		ADFM_bit = 1;
	BSF         ADFM_bit+0, BitPos(ADFM_bit+0) 
;ADCON1.c,16 :: 		ADON_bit = 1;
	BSF         ADON_bit+0, BitPos(ADON_bit+0) 
;ADCON1.c,18 :: 		}
L_end_my_ADC_Init:
	RETURN      0
; end of _my_ADC_Init

_my_ADC_Read:

;ADCON1.c,20 :: 		int my_ADC_Read(char canal){
;ADCON1.c,23 :: 		CHS3_bit = (canal&0b00001000)>>3;
	MOVLW       8
	ANDWF       FARG_my_ADC_Read_canal+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	BTFSC       R0, 0 
	GOTO        L__my_ADC_Read19
	BCF         CHS3_bit+0, BitPos(CHS3_bit+0) 
	GOTO        L__my_ADC_Read20
L__my_ADC_Read19:
	BSF         CHS3_bit+0, BitPos(CHS3_bit+0) 
L__my_ADC_Read20:
;ADCON1.c,24 :: 		CHS2_bit = (canal&0b00000100)>>2;
	MOVLW       4
	ANDWF       FARG_my_ADC_Read_canal+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	RRCF        R0, 1 
	BCF         R0, 7 
	BTFSC       R0, 0 
	GOTO        L__my_ADC_Read21
	BCF         CHS2_bit+0, BitPos(CHS2_bit+0) 
	GOTO        L__my_ADC_Read22
L__my_ADC_Read21:
	BSF         CHS2_bit+0, BitPos(CHS2_bit+0) 
L__my_ADC_Read22:
;ADCON1.c,25 :: 		CHS1_bit = (canal&0b00000010)>>1;
	MOVLW       2
	ANDWF       FARG_my_ADC_Read_canal+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	BTFSC       R0, 0 
	GOTO        L__my_ADC_Read23
	BCF         CHS1_bit+0, BitPos(CHS1_bit+0) 
	GOTO        L__my_ADC_Read24
L__my_ADC_Read23:
	BSF         CHS1_bit+0, BitPos(CHS1_bit+0) 
L__my_ADC_Read24:
;ADCON1.c,26 :: 		CHS0_bit = (canal&0b0000001);
	MOVLW       1
	ANDWF       FARG_my_ADC_Read_canal+0, 0 
	MOVWF       R0 
	BTFSC       R0, 0 
	GOTO        L__my_ADC_Read25
	BCF         CHS0_bit+0, BitPos(CHS0_bit+0) 
	GOTO        L__my_ADC_Read26
L__my_ADC_Read25:
	BSF         CHS0_bit+0, BitPos(CHS0_bit+0) 
L__my_ADC_Read26:
;ADCON1.c,27 :: 		GO_DONE_bit = 1;
	BSF         GO_DONE_bit+0, BitPos(GO_DONE_bit+0) 
;ADCON1.c,29 :: 		while(GO_DONE_bit ==1);
L_my_ADC_Read0:
	BTFSS       GO_DONE_bit+0, BitPos(GO_DONE_bit+0) 
	GOTO        L_my_ADC_Read1
	GOTO        L_my_ADC_Read0
L_my_ADC_Read1:
;ADCON1.c,30 :: 		delay_us(20);
	MOVLW       6
	MOVWF       R13, 0
L_my_ADC_Read2:
	DECFSZ      R13, 1, 1
	BRA         L_my_ADC_Read2
	NOP
;ADCON1.c,31 :: 		return ( ADRESH<<8 | ADRESL);
	MOVF        ADRESH+0, 0 
	MOVWF       R1 
	CLRF        R0 
	MOVF        ADRESL+0, 0 
	IORWF       R0, 1 
	MOVLW       0
	IORWF       R1, 1 
;ADCON1.c,32 :: 		}
L_end_my_ADC_Read:
	RETURN      0
; end of _my_ADC_Read

_main:

;ADCON1.c,33 :: 		void main() {
;ADCON1.c,36 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;ADCON1.c,37 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;ADCON1.c,39 :: 		ADCON1 = 12;
	MOVLW       12
	MOVWF       ADCON1+0 
;ADCON1.c,40 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;ADCON1.c,43 :: 		while(1){
L_main3:
;ADCON1.c,45 :: 		s1 = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _s1+0 
	MOVF        R1, 0 
	MOVWF       _s1+1 
;ADCON1.c,46 :: 		s2 = ADC_Read(1);
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _s2+0 
	MOVF        R1, 0 
	MOVWF       _s2+1 
;ADCON1.c,47 :: 		s0 = ADC_Read(2);
	MOVLW       2
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _s0+0 
	MOVF        R1, 0 
	MOVWF       _s0+1 
;ADCON1.c,49 :: 		if(RB0_bit ==0 && RB1_bit ==0){
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main7
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main7
L__main16:
;ADCON1.c,50 :: 		aux =s0;
	MOVF        _s0+0, 0 
	MOVWF       _aux+0 
	MOVF        _s0+1, 0 
	MOVWF       _aux+1 
;ADCON1.c,51 :: 		}
L_main7:
;ADCON1.c,52 :: 		if(RB0_bit ==1 && RB1_bit ==0){
	BTFSS       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main10
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main10
L__main15:
;ADCON1.c,53 :: 		aux =s1;
	MOVF        _s1+0, 0 
	MOVWF       _aux+0 
	MOVF        _s1+1, 0 
	MOVWF       _aux+1 
;ADCON1.c,54 :: 		}
L_main10:
;ADCON1.c,55 :: 		if(RB0_bit ==0 && RB1_bit ==1){
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L_main13
	BTFSS       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L_main13
L__main14:
;ADCON1.c,56 :: 		aux =s2;
	MOVF        _s2+0, 0 
	MOVWF       _aux+0 
	MOVF        _s2+1, 0 
	MOVWF       _aux+1 
;ADCON1.c,57 :: 		}
L_main13:
;ADCON1.c,59 :: 		LATC = aux>>8;
	MOVF        _aux+1, 0 
	MOVWF       R0 
	MOVLW       0
	BTFSC       _aux+1, 7 
	MOVLW       255
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       LATC+0 
;ADCON1.c,60 :: 		LATD = s1;
	MOVF        _s1+0, 0 
	MOVWF       LATD+0 
;ADCON1.c,62 :: 		}
	GOTO        L_main3
;ADCON1.c,64 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
