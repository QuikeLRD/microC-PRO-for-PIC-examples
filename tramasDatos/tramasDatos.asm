
_Interrupt:

;tramasDatos.c,4 :: 		void Interrupt(){
;tramasDatos.c,6 :: 		if(RCIF_bit ==1){
	BTFSS       RCIF_bit+0, BitPos(RCIF_bit+0) 
	GOTO        L_Interrupt0
;tramasDatos.c,7 :: 		letra = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _letra+0 
;tramasDatos.c,8 :: 		RCIF_bit = 0;
	BCF         RCIF_bit+0, BitPos(RCIF_bit+0) 
;tramasDatos.c,10 :: 		}
L_Interrupt0:
;tramasDatos.c,12 :: 		}
L_end_Interrupt:
L__Interrupt7:
	RETFIE      1
; end of _Interrupt

_main:

;tramasDatos.c,14 :: 		void main() {
;tramasDatos.c,15 :: 		ADCON1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;tramasDatos.c,16 :: 		TRISA0_bit = 0;
	BCF         TRISA0_bit+0, BitPos(TRISA0_bit+0) 
;tramasDatos.c,17 :: 		PORTA.RA0 =0;
	BCF         PORTA+0, 0 
;tramasDatos.c,19 :: 		RCIF_bit = 0;
	BCF         RCIF_bit+0, BitPos(RCIF_bit+0) 
;tramasDatos.c,20 :: 		GIE_bit  = 1;
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;tramasDatos.c,21 :: 		PEIE_bit = 1;
	BSF         PEIE_bit+0, BitPos(PEIE_bit+0) 
;tramasDatos.c,22 :: 		RCIE_bit = 1;
	BSF         RCIE_bit+0, BitPos(RCIE_bit+0) 
;tramasDatos.c,24 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	MOVLW       2
	MOVWF       SPBRGH+0 
	MOVLW       8
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;tramasDatos.c,25 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;tramasDatos.c,26 :: 		Lcd_Cmd(12);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;tramasDatos.c,30 :: 		while(1){
L_main1:
;tramasDatos.c,33 :: 		if(letra == '1')
	MOVF        _letra+0, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
;tramasDatos.c,34 :: 		PORTA.RA0 = 1;
	BSF         PORTA+0, 0 
L_main3:
;tramasDatos.c,35 :: 		if(letra == '0')
	MOVF        _letra+0, 0 
	XORLW       48
	BTFSS       STATUS+0, 2 
	GOTO        L_main4
;tramasDatos.c,36 :: 		PORTA.RA0 = 0;
	BCF         PORTA+0, 0 
L_main4:
;tramasDatos.c,38 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;tramasDatos.c,39 :: 		}
	GOTO        L_main1
;tramasDatos.c,41 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
