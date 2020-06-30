data segment
    a db 05h
    Negationnum db ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov al,a
    neg al 
    mov Negationnum,al
    hlt

mov ax, 4c00h
int 21h  

ends

end start
