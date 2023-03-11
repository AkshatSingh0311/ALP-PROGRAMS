;line asm
.model small
.stack 100h
.code

MOV AH,00H 
MOV AL,0DH
INT 10H

MOV AH,0CH
MOV AL,05H
MOV BH,03H
MOV CX,130;Colum number of pixel
MOV DX,160;Row number of pixel
MOV BL,50

LINE:
	INT 10H
	INC CX
	DEC BL
	JNZ LINE

MOV AX,0503H
INT 10H

MOV AH,4CH
INT 21H

END 
