.model small
.stack 100h
.code

MOV AH,00H
MOV AL,0DH
INT 10H

MOV AH,0CH
MOV AL,05H
MOV BH,03H
MOV CX,135
MOV DX,100
MOV BL,30
HOZLINE:
	INT 10H
	INC CX
	DEC BL
	JNZ HOZLINE
MOV BL,30
MOV CX,165
MOV DX,100
DLL:
	INT 10H
	DEC DX
	;INC CX
	DEC BL
	JNZ DLL
MOV BL,30
MOV DX,70
MOV CX,165
DLR:
	INT 10H
	DEC DX
	DEC CX
	DEC BL
	JNZ DLR

MOV AX,0503H
INT 10H

MOV AH,4CH
INT 21H
END
