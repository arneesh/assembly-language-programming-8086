data segment
    DIVIDEND db 07h
    DIVISOR db 02h
    QUOTIENT db ?
    REMAINDER db ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

MOV ax,data
MOV DS,AX
mov ah,0 
MOV al,DIVIDEND
MOV bl,DIVISOR
DIV bl 
mov QUOTIENT,al
mov REMAINDER,ah
HLT

 

ends

end start
