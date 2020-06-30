data segment
    
    str db 'hey12345'
    len db $-str
    letters db ?
    num db ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   mov es,ax
   
    mov cx,00
   mov cl,len 
   mov ax,00
   mov si,offset str
   
   mov bx,00
   
back: mov ah,[si]
      cmp ah,'9'+1
      jnc next
      inc bl
      
 next: inc si
       loop back
       
       
 mov  num,bl
 mov dl,len
 sub dl,bl
 mov letters,dl     
      
   hlt       

ends

end start
