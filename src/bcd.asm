data segment
    
    BCD DW 27H
BIN DW ?

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   
   MOV AX,DATA
MOV DS,AX
MOV AX,BCD
AND AX,07H
MOV BX,AX
MOV AX,BCD
AND AX,0F0H
MOV CX,0AH
MUL CX
ADD AX,BX
MOV BIN,AX
    

ends

end start
