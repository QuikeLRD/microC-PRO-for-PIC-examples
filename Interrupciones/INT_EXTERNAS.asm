
_interrupt:

;INT_EXTERNAS.c,4 :: 		void interrupt(){
;INT_EXTERNAS.c,6 :: 		if(INT0IF_bit == 1){
	BTFSS       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L_interrupt0
;INT_EXTERNAS.c,7 :: 		i++;
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;INT_EXTERNAS.c,8 :: 		if(i>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt8
	MOVF        _i+0, 0 
	SUBLW       9
L__interrupt8:
	BTFSC       STATUS+0, 0 
	GOTO        L_interrupt1
;INT_EXTERNAS.c,9 :: 		i=0;
	CLRF        _i+0 
	CLRF        _i+1 
L_interrupt1:
;INT_EXTERNAS.c,10 :: 		LATA = decoAC(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_decoAC_valor+0 
	CALL        _decoAC+0, 0
	MOVF        R0, 0 
	MOVWF       LATA+0 
;INT_EXTERNAS.c,11 :: 		INT0IF_bit = 0;                //BORRAMOS LA BANDERA DEBIDO A QUE ATENDIMOS EL EVENTO
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;INT_EXTERNAS.c,12 :: 		}
L_interrupt0:
;INT_EXTERNAS.c,13 :: 		if(INT1IF_bit == 1){
	BTFSS       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L_interrupt2
;INT_EXTERNAS.c,14 :: 		i--;
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
;INT_EXTERNAS.c,15 :: 		if(i<0)
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt9
	MOVLW       0
	SUBWF       _i+0, 0 
L__interrupt9:
	BTFSC       STATUS+0, 0 
	GOTO        L_interrupt3
;INT_EXTERNAS.c,16 :: 		i=9;
	MOVLW       9
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L_interrupt3:
;INT_EXTERNAS.c,17 :: 		LATA = decoAC(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_decoAC_valor+0 
	CALL        _decoAC+0, 0
	MOVF        R0, 0 
	MOVWF       LATA+0 
;INT_EXTERNAS.c,18 :: 		INT1IF_bit = 0;                //BORRAMOS LA BANDERA DEBIDO A QUE ATENDIMOS EL EVENTO
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;INT_EXTERNAS.c,19 :: 		}
L_interrupt2:
;INT_EXTERNAS.c,20 :: 		}
L_end_interrupt:
L__interrupt7:
	RETFIE      1
; end of _interrupt

_main:

;INT_EXTERNAS.c,22 :: 		void main() {
;INT_EXTERNAS.c,24 :: 		OSCCON = 0b01110010;
	MOVLW       114
	MOVWF       OSCCON+0 
;INT_EXTERNAS.c,25 :: 		ADCON1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;INT_EXTERNAS.c,26 :: 		TRISA  = 0x00;
	CLRF        TRISA+0 
;INT_EXTERNAS.c,27 :: 		TRISD  = 0x00;
	CLRF        TRISD+0 
;INT_EXTERNAS.c,28 :: 		TRISB0_bit = 1;
	BSF         TRISB0_bit+0, BitPos(TRISB0_bit+0) 
;INT_EXTERNAS.c,29 :: 		TRISB1_bit = 1;
	BSF         TRISB1_bit+0, BitPos(TRISB1_bit+0) 
;INT_EXTERNAS.c,30 :: 		LATA = 0x00;                           //ENCIENDE TODOS LOS SEGMENTOS DEL DISPLAY
	CLRF        LATA+0 
;INT_EXTERNAS.c,31 :: 		LATD = 0xFF;                           //ENCIENDE TODOS LOS
	MOVLW       255
	MOVWF       LATD+0 
;INT_EXTERNAS.c,34 :: 		GIE_bit  = 1;                         //HABILITAMOS INTERRUPCIONES GLOBALES
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;INT_EXTERNAS.c,35 :: 		PEIE_bit = 1;                         //HABILITAMOS INTERRUPCIONE DE PERIFERICOS
	BSF         PEIE_bit+0, BitPos(PEIE_bit+0) 
;INT_EXTERNAS.c,37 :: 		INT0IF_bit = 0;                       //BORRAMOS LAS BANDERAS DE LA INTERRUPCIÓN 0
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;INT_EXTERNAS.c,38 :: 		INT1IF_bit = 0;                       //BORRAMOS LAS BANDERAS DE LA INTERRUPCIÓN 1
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;INT_EXTERNAS.c,40 :: 		INT0IE_bit = 1;                       //HABILITAMOS INTERRUPCIÓN EXTERNA 0
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;INT_EXTERNAS.c,41 :: 		INT1IE_bit = 1;                       //HABILITAMOS INTERRUPCIÓN EXTERNA 1
	BSF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;INT_EXTERNAS.c,43 :: 		INTEDG0_bit = 1;                      //INTERRUPCIÓN0 POR FLANCOS DE SUBIDA
	BSF         INTEDG0_bit+0, BitPos(INTEDG0_bit+0) 
;INT_EXTERNAS.c,44 :: 		INTEDG1_bit = 1;                      //INTERRUPCIÓN1 POR FLANCOS DE SUBIDA
	BSF         INTEDG1_bit+0, BitPos(INTEDG1_bit+0) 
;INT_EXTERNAS.c,46 :: 		while (1){
L_main4:
;INT_EXTERNAS.c,48 :: 		secuencia(1000);
	MOVLW       232
	MOVWF       FARG_secuencia_te+0 
	MOVLW       3
	MOVWF       FARG_secuencia_te+1 
	CALL        _secuencia+0, 0
;INT_EXTERNAS.c,50 :: 		}
	GOTO        L_main4
;INT_EXTERNAS.c,53 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
