data segment  
    ; ASM TO MULTIPLY TWO NOS
    a db 04H
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
         mov bl,b 
         mul bl
         
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start