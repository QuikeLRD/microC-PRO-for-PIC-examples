
_USART_INIT:

;configuraciones.c,3 :: 		void USART_INIT(long BAUDRATE){
;configuraciones.c,6 :: 		dir_TX = 0;
	BCF         RC6_bit+0, BitPos(RC6_bit+0) 
;configuraciones.c,7 :: 		dir_RX = 1;
	BSF         RC7_bit+0, BitPos(RC7_bit+0) 
;configuraciones.c,10 :: 		TXSTA.TX9 = 0;
	BCF         TXSTA+0, 6 
;configuraciones.c,11 :: 		RCSTA.RX9 = 0;
	BCF         RCSTA+0, 6 
;configuraciones.c,13 :: 		TXSTA.SYNC = 0;
	BCF         TXSTA+0, 4 
;configuraciones.c,20 :: 		}
L_USART_INIT0:
;configuraciones.c,23 :: 		SPBRG = (unsigned int)((_FOSC/(64.0*BAUDRATE))-1.0);
	MOVF        FARG_USART_INIT_BAUDRATE+0, 0 
	MOVWF       R0 
	MOVF        FARG_USART_INIT_BAUDRATE+1, 0 
	MOVWF       R1 
	MOVF        FARG_USART_INIT_BAUDRATE+2, 0 
	MOVWF       R2 
	MOVF        FARG_USART_INIT_BAUDRATE+3, 0 
	MOVWF       R3 
	CALL        _longint2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       36
	MOVWF       R1 
	MOVLW       116
	MOVWF       R2 
	MOVLW       149
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Sub_32x32_FP+0, 0
	CALL        _double2word+0, 0
	MOVF        R0, 0 
	MOVWF       SPBRG+0 
;configuraciones.c,25 :: 		TXSTA.BRGH = 0;
	BCF         TXSTA+0, 2 
;configuraciones.c,29 :: 		TXSTA.TXEN = 1;
	BSF         TXSTA+0, 5 
;configuraciones.c,30 :: 		RCSTA.SPEN = 1;
	BSF         RCSTA+0, 7 
;configuraciones.c,31 :: 		RCSTA.CREN = 1;
	BSF         RCSTA+0, 4 
;configuraciones.c,34 :: 		}
L_end_USART_INIT:
	RETURN      0
; end of _USART_INIT

_USART_CHAR:

;configuraciones.c,36 :: 		void USART_CHAR(char letra){
;configuraciones.c,38 :: 		TXREG = letra;
	MOVF        FARG_USART_CHAR_letra+0, 0 
	MOVWF       TXREG+0 
;configuraciones.c,39 :: 		while(TXSTA.TRMT == 0);
L_USART_CHAR2:
	BTFSC       TXSTA+0, 1 
	GOTO        L_USART_CHAR3
	GOTO        L_USART_CHAR2
L_USART_CHAR3:
;configuraciones.c,41 :: 		}
L_end_USART_CHAR:
	RETURN      0
; end of _USART_CHAR

_USART_TEXTO:

;configuraciones.c,43 :: 		void USART_TEXTO(char *texto){
;configuraciones.c,45 :: 		while(*texto){
L_USART_TEXTO4:
	MOVFF       FARG_USART_TEXTO_texto+0, FSR0L+0
	MOVFF       FARG_USART_TEXTO_texto+1, FSR0H+0
	MOVF        POSTINC0+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_USART_TEXTO5
;configuraciones.c,46 :: 		USART_CHAR(*texto);
	MOVFF       FARG_USART_TEXTO_texto+0, FSR0L+0
	MOVFF       FARG_USART_TEXTO_texto+1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_USART_CHAR_letra+0 
	CALL        _USART_CHAR+0, 0
;configuraciones.c,47 :: 		texto++;
	INFSNZ      FARG_USART_TEXTO_texto+0, 1 
	INCF        FARG_USART_TEXTO_texto+1, 1 
;configuraciones.c,48 :: 		}
	GOTO        L_USART_TEXTO4
L_USART_TEXTO5:
;configuraciones.c,50 :: 		}
L_end_USART_TEXTO:
	RETURN      0
; end of _USART_TEXTO
