data segment  
    ; ASM TO sub two numbers
    a db 05H
    b db 05H
    
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
         mov bl,a
         mov cl,a
         mov ah,0
         neg al
         cmp cl,bl
         
         
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start