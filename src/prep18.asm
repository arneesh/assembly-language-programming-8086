
; PRODUCT OF DIGITS OF NUMBER

data segment
   
   num dw 223h
   product dw  ? 
     
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   mov es,ax
            
   mov ax,00         
   mov ax,num
   mov bx,00
   mov bx,10h
   div bx 
      
   mov bp,dx
   
   mov dx,00
   div bx
   mov si,dx
   
   mov dx,00
   div bx
   mov di,dx
   
   
   mov ax,00
   mov ax,01h
   
   mul bp
   mul si
   mul di
   
   mov product ,ax
      
      
   hlt

ends

end start
