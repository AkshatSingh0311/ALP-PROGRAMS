.model small 
.stack 100h
.code
MOV AX,@data
MOV DS,AX

mov ah,2ah
int 21h


mov ah,4ch
int 21h
end
