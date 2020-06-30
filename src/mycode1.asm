data segment
    a db 05H
    b db 01H
    ; ASM to ADC 
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
         STC ; CF=1
         mov al,a
         add al,b
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start
