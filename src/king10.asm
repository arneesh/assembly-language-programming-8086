
;Largest in array

data segment
    
    array dw 0001,0004,0003,0007
    largest dw ?
    
    
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
   mov cx,04h   
   mov si,offset array
   
    dec cx  
    
up:
    cmp ax,[si+2]
    ja continue
    mov ax,[si+2]
    
continue: add si,2
          dec cx
          jnz up
          
          mov largest,ax             
     

ends

end start
