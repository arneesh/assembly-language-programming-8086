
; SEARCH AN ELEMENT IN ARRAY

data segment
   
   array db 1h,2h,3h,4h,5h
   
   msg1 db 'found$'
   msg2 db 'notfound$'
      
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
   mov cx,00
   mov bx,00 
   mov cl,05
   
   mov si,offset array
back:
   
   mov al,[si]
   cmp al,3h
   je foundy
   
   inc si
   loop back 
   
   lea dx,msg2
   mov ah,09h
   int 21h 
   
   
foundy: 
        lea dx,msg1 
        mov ah,09h
        int 21h
        
       
   
 
    
     

ends

end start
