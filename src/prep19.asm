
; ARRAY SUM ADD NEW AAAY

data segment
  
  array db 23h,34h,71h,56h
  
  array1 db 4 dup(0) 
  
  
  
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
    mov ch,04
    
    mov si,offset array
    mov di,offset array1 
  
back:    
    mov al,[si]
    mov ah,al
    
    and al,0fh
    and ah,0f0h
    mov cl,04
    shr ah,cl
    add al,ah
    mov [di],al
    inc si
    inc di          
              
     dec ch
     jnz back
     hlt
              
    
     

ends

end start
