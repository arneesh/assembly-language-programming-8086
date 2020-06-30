data segment
    MULTIPLICAND dw 0016h
    MULTIPLIER dw 0016h
    PRODUCT dw ?
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

MOV ax,data
MOV DS,AX
MOV ax,MULTIPLICAND
MOV bx,MULTIPLIER
MUL bx 
mov PRODUCT,ax
HLT

    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start