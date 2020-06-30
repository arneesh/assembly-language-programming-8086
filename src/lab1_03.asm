data segment 
    a db 04H
    b db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:     
     mov ax,data 
     mov DS,ax
     mov al,a
     mov b,al
     hlt
    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start
