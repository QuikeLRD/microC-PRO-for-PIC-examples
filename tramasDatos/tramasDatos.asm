
_Interrupt:

;tramasDatos.c,6 :: 		void Interrupt(){
;tramasDatos.c,8 :: 		if(RCIF_bit ==1){                       //  0 1 2 3
	BTFSS       RCIF_bit+0, BitPos(RCIF_bit+0) 
	GOTO        L_Interrupt0
;tramasDatos.c,9 :: 		trama[indice] = UART1_Read();       //J U A N
	MOVLW       _trama+0
	MOVWF       FLOC__Interrupt+0 
	MOVLW       hi_addr(_trama+0)
	MOVWF       FLOC__Interrupt+1 
	MOVF        _indice+0, 0 
	ADDWF       FLOC__Interrupt+0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FLOC__Interrupt+1, 1 
	CALL        _UART1_Read+0, 0
	MOVFF       FLOC__Interrupt+0, FSR1L+0
	MOVFF       FLOC__Interrupt+1, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;tramasDatos.c,11 :: 		if(trama[indice] == '#'){
	MOVLW       _trama+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_trama+0)
	MOVWF       FSR0L+1 
	MOVF        _indice+0, 0 
	ADDWF       FSR0L+0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0L+1, 1 
	MOVF        POSTINC0+0, 0 
	XORLW       35
	BTFSS       STATUS+0, 2 
	GOTO        L_Interrupt1
;tramasDatos.c,13 :: 		banderaRx=1;
	MOVLW       1
	MOVWF       _banderaRx+0 
;tramasDatos.c,15 :: 		}
	GOTO        L_Interrupt2
L_Interrupt1:
;tramasDatos.c,17 :: 		indice++;
	INCF        _indice+0, 1 
;tramasDatos.c,18 :: 		}
L_Interrupt2:
;tramasDatos.c,21 :: 		RCIF_bit = 0;
	BCF         RCIF_bit+0, BitPos(RCIF_bit+0) 
;tramasDatos.c,23 :: 		}
L_Interrupt0:
;tramasDatos.c,25 :: 		}
L_end_Interrupt:
L__Interrupt21:
	RETFIE      1
; end of _Interrupt

_main:

;tramasDatos.c,27 :: 		void main() {
;tramasDatos.c,28 :: 		ADCON1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;tramasDatos.c,29 :: 		TRISA0_bit = 0;
	BCF         TRISA0_bit+0, BitPos(TRISA0_bit+0) 
;tramasDatos.c,30 :: 		PORTA.RA0 =0;
	BCF         PORTA+0, 0 
;tramasDatos.c,32 :: 		RCIF_bit = 0;
	BCF         RCIF_bit+0, BitPos(RCIF_bit+0) 
;tramasDatos.c,33 :: 		GIE_bit  = 1;
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;tramasDatos.c,34 :: 		PEIE_bit = 1;
	BSF         PEIE_bit+0, BitPos(PEIE_bit+0) 
;tramasDatos.c,35 :: 		RCIE_bit = 1;
	BSF         RCIE_bit+0, BitPos(RCIE_bit+0) 
;tramasDatos.c,37 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	MOVLW       2
	MOVWF       SPBRGH+0 
	MOVLW       8
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;tramasDatos.c,38 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;tramasDatos.c,39 :: 		Lcd_Cmd(12);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;tramasDatos.c,43 :: 		while(1){
L_main3:
;tramasDatos.c,44 :: 		Lcd_Out(2,1,strLCD);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _strLCD+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_strLCD+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;tramasDatos.c,45 :: 		if(banderaRx==1){
	MOVF        _banderaRx+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main5
;tramasDatos.c,47 :: 		if(trama[0]=='L' && trama[1] == '1' && trama[2] == 'O' && trama[3] == 'N'){
	MOVF        _trama+0, 0 
	XORLW       76
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _trama+1, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _trama+2, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _trama+3, 0 
	XORLW       78
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
L__main19:
;tramasDatos.c,48 :: 		PORTA.RA0 = 1;
	BSF         PORTA+0, 0 
;tramasDatos.c,49 :: 		}
L_main8:
;tramasDatos.c,50 :: 		if(trama[0]=='L' && trama[1] == '1' && trama[2] == 'O' && trama[3] == 'F' && trama[4] == 'F'){
	MOVF        _trama+0, 0 
	XORLW       76
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _trama+1, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _trama+2, 0 
	XORLW       79
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _trama+3, 0 
	XORLW       70
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _trama+4, 0 
	XORLW       70
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
L__main18:
;tramasDatos.c,51 :: 		PORTA.RA0 = 0;
	BCF         PORTA+0, 0 
;tramasDatos.c,52 :: 		}
L_main11:
;tramasDatos.c,53 :: 		for(i=0; i<=19; i++){
	CLRF        _i+0 
L_main12:
	MOVF        _i+0, 0 
	SUBLW       19
	BTFSS       STATUS+0, 0 
	GOTO        L_main13
;tramasDatos.c,54 :: 		trama[i]=' ';
	MOVLW       _trama+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_trama+0)
	MOVWF       FSR1L+1 
	MOVF        _i+0, 0 
	ADDWF       FSR1L+0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1L+1, 1 
	MOVLW       32
	MOVWF       POSTINC1+0 
;tramasDatos.c,53 :: 		for(i=0; i<=19; i++){
	INCF        _i+0, 1 
;tramasDatos.c,55 :: 		}
	GOTO        L_main12
L_main13:
;tramasDatos.c,57 :: 		indice=0;
	CLRF        _indice+0 
;tramasDatos.c,58 :: 		banderaRx=0;
	CLRF        _banderaRx+0 
;tramasDatos.c,59 :: 		}
L_main5:
;tramasDatos.c,60 :: 		if(letra == '1')
	MOVF        _letra+0, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main15
;tramasDatos.c,61 :: 		PORTA.RA0 = 1;
	BSF         PORTA+0, 0 
L_main15:
;tramasDatos.c,62 :: 		if(letra == '0')
	MOVF        _letra+0, 0 
	XORLW       48
	BTFSS       STATUS+0, 2 
	GOTO        L_main16
;tramasDatos.c,63 :: 		PORTA.RA0 = 0;
	BCF         PORTA+0, 0 
L_main16:
;tramasDatos.c,65 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
	NOP
;tramasDatos.c,66 :: 		}
	GOTO        L_main3
;tramasDatos.c,68 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
