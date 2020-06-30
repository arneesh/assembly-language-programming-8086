
;SUM OF DIGITS OF NUMBER

data segment
    
    num dw 1234h
    sum dw ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   
   mov ax,1234h 
   mov si,00
   mov bx,10h
   mov cx,00
   mov cx,4 
   
back:   
   div bx
   add si,dx
     loop back
     
     mov sum,si
   
   

ends

end start
