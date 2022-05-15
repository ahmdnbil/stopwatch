
_main:

	CALL       _Lcd_Init+0
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	BSF        TRISD+0, 7
	BSF        TRISD+0, 6
	BSF        TRISD+0, 5
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main1:
	BTFSS      PORTD+0, 5
	GOTO       L_main3
	MOVLW      1
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_main4:
	MOVF       _k+0, 0
	IORWF      _k+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
	MOVF       _sec+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _sec+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _str+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
	MOVLW      _str+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _sec+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVF       _sec+0, 0
	SUBLW      9
L__main19:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main6:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _sec+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       _sec+0, 0
	SUBLW      9
L__main20:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main7:
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
	INCF       _sec+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sec+1, 1
	MOVLW      0
	XORWF      _sec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      60
	XORWF      _sec+0, 0
L__main21:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	INCF       _mn+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mn+1, 1
	CLRF       _sec+0
	CLRF       _sec+1
	MOVLW      0
	XORWF      _mn+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      60
	XORWF      _mn+0, 0
L__main22:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	INCF       _hr+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hr+1, 1
	CLRF       _sec+0
	CLRF       _sec+1
	CLRF       _mn+0
	CLRF       _mn+1
	MOVF       _hr+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _hr+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _str3+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
	MOVLW      _str3+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hr+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       _hr+0, 0
	SUBLW      9
L__main23:
	BTFSS      STATUS+0, 0
	GOTO       L_main11
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main11:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _hr+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVF       _hr+0, 0
	SUBLW      9
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main12:
L_main10:
	MOVF       _mn+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _mn+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _str2+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
	MOVLW      _str2+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _mn+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVF       _mn+0, 0
	SUBLW      9
L__main25:
	BTFSS      STATUS+0, 0
	GOTO       L_main13
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main13:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _mn+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVF       _mn+0, 0
	SUBLW      9
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main14
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main14:
L_main9:
	BTFSS      PORTD+0, 6
	GOTO       L_main15
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	CLRF       _k+0
	CLRF       _k+1
L_main15:
	BTFSS      PORTD+0, 7
	GOTO       L_main16
	CLRF       _k+0
	CLRF       _k+1
	CLRF       _sec+0
	CLRF       _sec+1
	CLRF       _mn+0
	CLRF       _mn+1
	CLRF       _hr+0
	CLRF       _hr+1
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main16:
	GOTO       L_main4
L_main5:
L_main3:
	BTFSS      PORTD+0, 7
	GOTO       L_main17
	CLRF       _k+0
	CLRF       _k+1
	CLRF       _sec+0
	CLRF       _sec+1
	CLRF       _mn+0
	CLRF       _mn+1
	CLRF       _hr+0
	CLRF       _hr+1
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr19_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr20_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main17:
	GOTO       L_main1
L_end_main:
	GOTO       $+0
; end of _main
