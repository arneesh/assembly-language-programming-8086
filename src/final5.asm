
;PRODUCT OF DIGITS

data segment
    
    num dw 223h
    prod dw ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   
   mov ax,num 
   
   mov si,00
   mov di,00
   mov sp,00
   
   mov bx,10h
   mov cx,00
   mov cx,1 
   
back:   
   div bx
   add si,dx
     loop back
     
mov cx,1
back1:
     div bx
add di,dx
 loop back  
 
mov cx,1
back2: 
  div bx
add sp,dx
 loop back  
          
 mov ax,00
 mov ax,si
 mul di
 
 mul sp
 
 mov prod,ax         
          
 hlt        
     
   

ends

end start
