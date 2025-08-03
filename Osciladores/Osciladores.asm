
_main:

;Osciladores.c,1 :: 		void main() {
;Osciladores.c,2 :: 		OSCCON = 0x72; //Oscilador interno 8MHZ
	MOVLW       114
	MOVWF       OSCCON+0 
;Osciladores.c,3 :: 		TRISA = 0x00;
	CLRF        TRISA+0 
;Osciladores.c,5 :: 		while(1){
L_main0:
;Osciladores.c,6 :: 		}
	GOTO        L_main0
;Osciladores.c,11 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
