data segment
   a db 04h
   1scompliment db ?
   2scompliment db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov ah,0
    mov al,a
    mov bl,a
    not al
    neg bl 
    mov 1scompliment,al
    mov 2scompliment,bl
    hlt

mov ax, 4c00h
int 21h  

ends

end start
