data segment
    number dw 1234h 
    a dw 10h 
    b dw 0000h
    Sumofdigits dw ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax,data
    mov ds,ax 
    mov si,b
    mov cx,05 
    mov ax,number
arn:    
    
     
    mov bx,a 
    div bx
    add si,dx  
    Loop Arn
    
    mov Sumofdigits,si
    
    
  

hlt  

ends

end start
