;https://msxpen.com/
;BASIC:
;10 BLOAD"PROGRAM.BIN",R

OUTPUT: EQU 0X00A2
CLEAR: EQU 0X00C3

ORG 0XD000

START:
	XOR A
    CALL CLEAR
    LD B, 1
    
INICIO:
	LD HL, MENSAGEM
    JR LOOP
    
INICIO2:
	CP B
    DJNZ FIM
	LD HL, MENSAGEM2
    JR LOOP
    
LOOP:
	LD A, (HL)
    CP 0
    JR Z, INICIO2
    CALL OUTPUT
	INC HL
    JR LOOP
 
FIM:
    
MENSAGEM: db "Funcinou!!!!",13,10,0
MENSAGEM2: db "EU AMO JAVA!!!",0

END START