; SEARCHING AN SELEMNT IN ARRAY

data segment
    
    array db 2h,4h,6h,8h,9h,5h
    
    msg1 db 'found$'
    msg2 db 'not found'
    
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
  mov cx,00
  mov cx,6
  mov ax,00
  
back:  
  mov al,[si]
  cmp al,3h
  je found
  inc si
  loop back 
     
 mov ah,09h
 lea dx,msg2
 int 21h
 hlt   
  
  
found:
  mov ah,09h
  lea dx,msg1
  int 21h  
  
    
  

ends

end start
                     
                     
                     
                     
                     
