
; ODD EVEN - FIND OUT

data segment
   
   number db 06h  
   
   msg1 db 'even number$'
   msg2 db 'odd number$'
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax 
    mov ax,00
    mov al,number
    mov bl,02h
    div bl
    cmp ah,00
    je jana
    
    lea dx,msg2
    mov ah,09h
    int 21h 
    
    hlt
    
jana:
      lea dx,msg1
      mov ah,09h
      int 21h    
    
     hlt
    

ends

end start
