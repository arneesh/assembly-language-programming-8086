data segment
    MULTIPLICAND db 04h
    MULTIPLIER db 02h
    PRODUCT DB ?
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

MOV ax,data
MOV DS,AX
MOV AL,MULTIPLICAND
MOV BL,MULTIPLIER
MUL BL 
mov PRODUCT,al
HLT

    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start
