.model small
.stack 100h
.data
FNAME DB "CNF.TXT",0
FCONTENT DB "Hi Akshat Singh this side"
HANDLE DW ?
.code
MOV AX,@data
MOV DS,AX

MOV AH,3CH
LEA DX,FNAME
MOV CL,0
INT 21H
MOV HANDLE,AX

MOV AH,40H
MOV BX,HANDLE
MOV CX,25 ;length of the content 
LEA DX,FCONTENT
INT 21H

MOV AH,3EH
MOV BX,HANDLE
INT 21H

MOV AH,4Ch
INT 21H

END
