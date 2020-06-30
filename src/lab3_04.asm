data segment
    DIVIDEND dw 9876h
    DIVISOR dw 1234h
    QUOTIENT dw ?
    REMAINDER dw ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

MOV ax,data
MOV DS,AX
mov ax,0 
MOV ax,DIVIDEND
MOV bx,DIVISOR
DIV bx 
mov QUOTIENT,ax
mov REMAINDER,dx
HLT

 

ends

end start
