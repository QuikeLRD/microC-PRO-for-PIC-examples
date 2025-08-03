
_Interrupt:

;INTERRUPCIONE_RB.c,19 :: 		void Interrupt(){
;INTERRUPCIONE_RB.c,21 :: 		if (RBIF_bit == 1){                 //SE HA PRODUCIDO UN CAMBIO DE ESTADO?
	BTFSS       RBIF_bit+0, BitPos(RBIF_bit+0) 
	GOTO        L_Interrupt0
;INTERRUPCIONE_RB.c,24 :: 		LATB.F0 += 1;                    //DEJA EN 1 B0, ES DECIR ENCIENDE Y APAGA EL PUERTO RB0
	CLRF        R0 
	BTFSC       LATB+0, 0 
	INCF        R0, 1 
	INCF        R0, 1 
	BTFSC       R0, 0 
	GOTO        L__Interrupt13
	BCF         LATB+0, 0 
	GOTO        L__Interrupt14
L__Interrupt13:
	BSF         LATB+0, 0 
L__Interrupt14:
;INTERRUPCIONE_RB.c,25 :: 		valorB = PORTB&0xF0;             //TOMAMOS LOS 4 BITS MAS SIGNIFICATIVOS Y LIMPIAMOS LOS QUE NO
	MOVLW       240
	ANDWF       PORTB+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       _valorB+0 
;INTERRUPCIONE_RB.c,26 :: 		zona1 = (valorB&0b00010000)>>4;  //VALOR CON EL CUAL SE ACTIVARA
	MOVLW       0
	BTFSC       R1, 4 
	MOVLW       1
	MOVWF       _zona1+0 
;INTERRUPCIONE_RB.c,27 :: 		zona2 = (valorB&0b00100000)>>5;  //VALOR CON EL CUAL SE ACTIVARA
	MOVLW       0
	BTFSC       R1, 5 
	MOVLW       1
	MOVWF       _zona2+0 
;INTERRUPCIONE_RB.c,28 :: 		zona3 = (valorB&0b01000000)>>6;  //VALOR CON EL CUAL SE ACTIVARA
	MOVLW       0
	BTFSC       R1, 6 
	MOVLW       1
	MOVWF       _zona3+0 
;INTERRUPCIONE_RB.c,29 :: 		zona4 = (valorB&0b10000000)>>7;  //VALOR CON EL CUAL SE ACTIVARA
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       1
	MOVWF       _zona4+0 
;INTERRUPCIONE_RB.c,33 :: 		RBIF_bit = 0;                    //DEJAMOS EN CERO LA CONDICIÓN
	BCF         RBIF_bit+0, BitPos(RBIF_bit+0) 
;INTERRUPCIONE_RB.c,34 :: 		}
L_Interrupt0:
;INTERRUPCIONE_RB.c,36 :: 		}
L_end_Interrupt:
L__Interrupt12:
	RETFIE      1
; end of _Interrupt

_main:

;INTERRUPCIONE_RB.c,38 :: 		void main() {
;INTERRUPCIONE_RB.c,40 :: 		ADCON1 = 15;                        //TODOS LOS PINES SON DIGITALES
	MOVLW       15
	MOVWF       ADCON1+0 
;INTERRUPCIONE_RB.c,41 :: 		TRISB =  0xF0;                      //PRIMEROS 4 ENTRADAS Y ULTIMOS 4 SALIDAS
	MOVLW       240
	MOVWF       TRISB+0 
;INTERRUPCIONE_RB.c,43 :: 		valorB = PORTB&0xF0;                //ASIGNO EL VALOR DEL PUERTOB A LA VARIABLE PARA COMPARAR
	MOVLW       240
	ANDWF       PORTB+0, 0 
	MOVWF       _valorB+0 
;INTERRUPCIONE_RB.c,45 :: 		GIE_bit  = 1;                       //HABILITAMOS INTERRUPCIONES GLOBALES
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;INTERRUPCIONE_RB.c,46 :: 		RBIF_bit = 0;                       //BORRAMOS BANDERA DE INTERRUPCIÓN POR RB
	BCF         RBIF_bit+0, BitPos(RBIF_bit+0) 
;INTERRUPCIONE_RB.c,47 :: 		RBIE_bit = 1;                       //HABILITAMOS INTERRUPCION POR RB
	BSF         RBIE_bit+0, BitPos(RBIE_bit+0) 
;INTERRUPCIONE_RB.c,49 :: 		LCD_init();
	CALL        _Lcd_Init+0, 0
;INTERRUPCIONE_RB.c,50 :: 		LCD_Cmd(12);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;INTERRUPCIONE_RB.c,51 :: 		LCD_Out(1,1, " SIST. SEGURIDAD");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;INTERRUPCIONE_RB.c,53 :: 		while(1){
L_main1:
;INTERRUPCIONE_RB.c,54 :: 		if(zona1 ==1)
	MOVF        _zona1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
;INTERRUPCIONE_RB.c,55 :: 		LCD_Out(2,1, "Z1:  ON");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	GOTO        L_main4
L_main3:
;INTERRUPCIONE_RB.c,57 :: 		LCD_Out(2,1, "Z1: OFF"); //DEBE QUEDARNOS ALINEADO, ES DECIR DEL MISMO TAMAÑO
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main4:
;INTERRUPCIONE_RB.c,59 :: 		if(zona2 ==1)
	MOVF        _zona2+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main5
;INTERRUPCIONE_RB.c,60 :: 		LCD_Out(2,9, "Z2:  ON");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	GOTO        L_main6
L_main5:
;INTERRUPCIONE_RB.c,62 :: 		LCD_Out(2,9, "Z2: OFF"); //DEBE QUEDARNOS ALINEADO, ES DECIR DEL MISMO TAMAÑO
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main6:
;INTERRUPCIONE_RB.c,64 :: 		if(zona3 ==1)
	MOVF        _zona3+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main7
;INTERRUPCIONE_RB.c,65 :: 		LCD_Out(3,1, "Z3:  ON");
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	GOTO        L_main8
L_main7:
;INTERRUPCIONE_RB.c,67 :: 		LCD_Out(3,1, "Z3: OFF"); //DEBE QUEDARNOS ALINEADO, ES DECIR DEL MISMO TAMAÑO
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main8:
;INTERRUPCIONE_RB.c,69 :: 		if(zona4 ==1)
	MOVF        _zona4+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main9
;INTERRUPCIONE_RB.c,70 :: 		LCD_Out(3,9, "Z4:  ON");
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
	GOTO        L_main10
L_main9:
;INTERRUPCIONE_RB.c,72 :: 		LCD_Out(3,9, "Z4: OFF");
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_INTERRUPCIONE_RB+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_INTERRUPCIONE_RB+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
L_main10:
;INTERRUPCIONE_RB.c,73 :: 		}
	GOTO        L_main1
;INTERRUPCIONE_RB.c,75 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
