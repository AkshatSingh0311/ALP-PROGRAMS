.model-small
.stack 100h
.code
START:
	MOV AH,07H
	INT 21H
	CMP AL,0
	JE EX 
	MOV AH,02H
	INT 21H
	JMP START
	
EX:MOV AH,4CH
	INT 21H 
END	
