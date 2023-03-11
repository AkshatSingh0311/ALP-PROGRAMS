.model-small
.stack 100h
.code
START:
	MOV AH,00H
	INT 16H
	CMP AL,0
	JE EX 
	MOV AH,0EH
	INT 10H
	JMP START
	
EX:INT 03H
END	
