data segment
    
    array db 1h,2h,3h,4h,5h,6h,7h,8h,9h,0h
    msg1 db 'element found$'
    msg2 db 'element not found$'
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov si,offset array
    mov cx,0ah
    
back: mov al,[si]    
      cmp al,6h 
      je found
      inc si
      loop back
      
      lea dx,msg2
      mov ah,09h
      int 21h
       
       hlt
      
      
found: lea dx,msg1
       mov ah,09h
       int 21h      
      
ends

end start
   
  