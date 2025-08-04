
_main:

;USART01.c,3 :: 		void main() {
;USART01.c,5 :: 		ADCON1 =15;
	MOVLW       15
	MOVWF       ADCON1+0 
;USART01.c,6 :: 		USART_INIT(9600);
	MOVLW       128
	MOVWF       FARG_USART_INIT_BAUDRATE+0 
	MOVLW       37
	MOVWF       FARG_USART_INIT_BAUDRATE+1 
	MOVLW       0
	MOVWF       FARG_USART_INIT_BAUDRATE+2 
	MOVWF       FARG_USART_INIT_BAUDRATE+3 
	CALL        _USART_INIT+0, 0
;USART01.c,8 :: 		while(1){
L_main0:
;USART01.c,9 :: 		USART_TEXTO("Quike \n\r");
	MOVLW       ?lstr1_USART01+0
	MOVWF       FARG_USART_TEXTO_texto+0 
	MOVLW       hi_addr(?lstr1_USART01+0)
	MOVWF       FARG_USART_TEXTO_texto+1 
	CALL        _USART_TEXTO+0, 0
;USART01.c,10 :: 		USART_TEXTO("Lerdo \n\r");
	MOVLW       ?lstr2_USART01+0
	MOVWF       FARG_USART_TEXTO_texto+0 
	MOVLW       hi_addr(?lstr2_USART01+0)
	MOVWF       FARG_USART_TEXTO_texto+1 
	CALL        _USART_TEXTO+0, 0
;USART01.c,11 :: 		delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;USART01.c,12 :: 		}
	GOTO        L_main0
;USART01.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
