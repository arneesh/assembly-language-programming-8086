data segment  
    ; ASM TO sub two numbers
    a dw 4567H
    b dw 1221H
    
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
         mov ax,a
         sub ax,b 
         ; Result in al
         
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start