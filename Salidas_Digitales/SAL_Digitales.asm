
_main:

;SAL_Digitales.c,1 :: 		void main() {
;SAL_Digitales.c,3 :: 		TRISD = 0b00110000;
	MOVLW       48
	MOVWF       TRISD+0 
;SAL_Digitales.c,4 :: 		while(1){
L_main0:
;SAL_Digitales.c,6 :: 		}
	GOTO        L_main0
;SAL_Digitales.c,8 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
