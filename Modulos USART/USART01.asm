
_main:

;USART01.c,6 :: 		void main() {
;USART01.c,8 :: 		ADCON1 =15;
	MOVLW       15
	MOVWF       ADCON1+0 
;USART01.c,9 :: 		TRISA.RA0 = 0;
	BCF         TRISA+0, 0 
;USART01.c,10 :: 		USART_INIT(9600);
	MOVLW       128
	MOVWF       FARG_USART_INIT_BAUDRATE+0 
	MOVLW       37
	MOVWF       FARG_USART_INIT_BAUDRATE+1 
	MOVLW       0
	MOVWF       FARG_USART_INIT_BAUDRATE+2 
	MOVWF       FARG_USART_INIT_BAUDRATE+3 
	CALL        _USART_INIT+0, 0
;USART01.c,12 :: 		while(1){
L_main0:
;USART01.c,13 :: 		if(USART_DATA_RDY()==1){
	CALL        _USART_DATA_RDY+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main2
;USART01.c,14 :: 		letra = USART_RX();
	CALL        _USART_RX+0, 0
	MOVF        R0, 0 
	MOVWF       _letra+0 
;USART01.c,15 :: 		if(letra == 'a'){
	MOVF        R0, 0 
	XORLW       97
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
;USART01.c,16 :: 		PORTA.RA0 = 0;
	BCF         PORTA+0, 0 
;USART01.c,17 :: 		}
L_main3:
;USART01.c,18 :: 		if(letra == 'b'){
	MOVF        _letra+0, 0 
	XORLW       98
	BTFSS       STATUS+0, 2 
	GOTO        L_main4
;USART01.c,19 :: 		PORTA.RA0 = 1;
	BSF         PORTA+0, 0 
;USART01.c,20 :: 		}
L_main4:
;USART01.c,22 :: 		}
L_main2:
;USART01.c,24 :: 		USART_TEXTO("Quike \n\r");
	MOVLW       ?lstr1_USART01+0
	MOVWF       FARG_USART_TEXTO_texto+0 
	MOVLW       hi_addr(?lstr1_USART01+0)
	MOVWF       FARG_USART_TEXTO_texto+1 
	CALL        _USART_TEXTO+0, 0
;USART01.c,25 :: 		USART_TEXTO("Lerdo \n\r");
	MOVLW       ?lstr2_USART01+0
	MOVWF       FARG_USART_TEXTO_texto+0 
	MOVLW       hi_addr(?lstr2_USART01+0)
	MOVWF       FARG_USART_TEXTO_texto+1 
	CALL        _USART_TEXTO+0, 0
;USART01.c,26 :: 		delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
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
;USART01.c,27 :: 		}
	GOTO        L_main0
;USART01.c,29 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
