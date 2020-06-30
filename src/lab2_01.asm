data segment
    ; ASM TO ADD 2 NOS
    a db 05H
    b db 06H
    c db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
    ASSUME CS:code,DS:data
start: 
] 

          
         mov ax,data 
         mov DS,ax
         mov al,a
         add al,b
         mov ah,0
         mov c,al
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start
