
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
;configuraciones.c,15 :: 		if(_FOSC <=4000000){
	CALL        _Get_Fosc_kHz+0, 0
	CALL        _longword2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       136
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
	MOVLW       148
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_USART_INIT0
;configuraciones.c,17 :: 		SPBRG = (unsigned int)((_FOSC/(16.0*BAUDRATE))-1.0);
	CALL        _Get_Fosc_kHz+0, 0
	CALL        _longword2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       136
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__USART_INIT+0 
	MOVF        R1, 0 
	MOVWF       FLOC__USART_INIT+1 
	MOVF        R2, 0 
	MOVWF       FLOC__USART_INIT+2 
	MOVF        R3, 0 
	MOVWF       FLOC__USART_INIT+3 
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
	MOVLW       131
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
	MOVF        FLOC__USART_INIT+0, 0 
	MOVWF       R0 
	MOVF        FLOC__USART_INIT+1, 0 
	MOVWF       R1 
	MOVF        FLOC__USART_INIT+2, 0 
	MOVWF       R2 
	MOVF        FLOC__USART_INIT+3, 0 
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
;configuraciones.c,19 :: 		TXSTA.BRGH = 1;
	BSF         TXSTA+0, 2 
;configuraciones.c,20 :: 		}
	GOTO        L_USART_INIT1
L_USART_INIT0:
;configuraciones.c,23 :: 		SPBRG = (unsigned int)((_FOSC/(64.0*BAUDRATE))-1.0);
	CALL        _Get_Fosc_kHz+0, 0
	CALL        _longword2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       136
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__USART_INIT+0 
	MOVF        R1, 0 
	MOVWF       FLOC__USART_INIT+1 
	MOVF        R2, 0 
	MOVWF       FLOC__USART_INIT+2 
	MOVF        R3, 0 
	MOVWF       FLOC__USART_INIT+3 
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
	MOVF        FLOC__USART_INIT+0, 0 
	MOVWF       R0 
	MOVF        FLOC__USART_INIT+1, 0 
	MOVWF       R1 
	MOVF        FLOC__USART_INIT+2, 0 
	MOVWF       R2 
	MOVF        FLOC__USART_INIT+3, 0 
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
;configuraciones.c,26 :: 		}
L_USART_INIT1:
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

_USART_RX:

;configuraciones.c,51 :: 		char USART_RX(void){
;configuraciones.c,53 :: 		if(RCSTA.OERR ==1){
	BTFSS       RCSTA+0, 1 
	GOTO        L_USART_RX6
;configuraciones.c,54 :: 		RCSTA.CREN = 0;         //Limpiamos el OERR
	BCF         RCSTA+0, 4 
;configuraciones.c,55 :: 		}
L_USART_RX6:
;configuraciones.c,57 :: 		NOP
	NOP
;configuraciones.c,59 :: 		RCSTA.CREN = 1;         //Habilitamos la RX para futuros datos
	BSF         RCSTA+0, 4 
;configuraciones.c,60 :: 		return RCREG;
	MOVF        RCREG+0, 0 
	MOVWF       R0 
;configuraciones.c,61 :: 		}
L_end_USART_RX:
	RETURN      0
; end of _USART_RX

_USART_DATA_RDY:

;configuraciones.c,64 :: 		char USART_DATA_RDY(){
;configuraciones.c,65 :: 		return PIR1.RCIF;
	MOVLW       0
	BTFSC       PIR1+0, 5 
	MOVLW       1
	MOVWF       R0 
;configuraciones.c,67 :: 		}
L_end_USART_DATA_RDY:
	RETURN      0
; end of _USART_DATA_RDY
