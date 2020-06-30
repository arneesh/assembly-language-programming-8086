data segment  
    ; ASM TO MULTIPLY 16-bit TWO NOS
    a dw 144H
    b dw 12H
    
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
         mov bx,b 
         div bx
         ;RESULT IN AX
         
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start