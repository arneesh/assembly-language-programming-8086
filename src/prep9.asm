
;  SIGNED DIVISION

data segment
    
  dividend dd 111DEF00h
  divisor dw 0AAAAh
  quo dw ?
  rem dw ?  
   
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov si,0h
    
    mov ax,word ptr dividend[si]
    mov ax,word ptr [si+2]
    idiv divisor 
    mov quo,ax
    mov rem,dx
     

ends

end start
