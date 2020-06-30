data segment
   
   number db 6h
   cone db  ?
   czero db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   mov es,ax 
   mov al,number;
   mov bl,0h
   mov cx,8  
   
   loop1:    
   shr al,01
   jnc next
   inc bl  
   next:
   loop loop1   
   
   mov cone,bl   
   mov al,8
   sub al,bl
   mov czero,al
   

ends

end start
