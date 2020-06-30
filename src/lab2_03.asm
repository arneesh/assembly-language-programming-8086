data segment  
    ; ASM TO sub two numbers
    a db 06H
    b db 02H
    
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
         sub al,b 
         ; Result in al
         
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start