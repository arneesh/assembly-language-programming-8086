data segment
    MULTIPLICAND db 02h
    MULTIPLIER db 04h
    PRODUCT db ?
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

MOV ax,data
MOV DS,AX
MOV al,MULTIPLICAND
MOV bl,MULTIPLIER
MUL bl 
mov PRODUCT,al
HLT

    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start