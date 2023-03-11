.model small
.stack 100h
.data 
MSG DB "ABAB"
LEN DW 4
SUCCESS DB "IS A PALINDROME"
FAIL DB "NOT A PALINDROME"
.code
MOV AX,@data
MOV DS,AX

MOV AX,0
LEA DX,MSG
MOV SI,DX

PUSH BP 
MOV BP ,SP
MOV CX,LEN
addStack:
	CMP CX,0
	JE check
	MOV AX,[SI]
	PUSH AX
	DEC CX
	INC SI
	JMP addStack
check:
	LEA DX,MSG
	MOV SI,DX
	MOV CX,LEN
	cmpStack:
		CMP CX,0
		JE pali
		MOV AX,[SI]
		POP BX
		CMP AL,BL
		JNE notPali
		INC SI
		DEC CX
		JMP cmpStack
	pali:
		MOV AH,09H
		LEA DX,SUCCESS
		INT 21H
		JMP LEAVE
	notPali:
		MOV AH,09H
		LEA DX,FAIL
		INT 21H
		JMP LEAVE
LEAVE:
MOV AX,4C00H
INT 21H

END

