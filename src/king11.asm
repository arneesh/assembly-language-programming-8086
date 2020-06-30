
;Largest in array
       
; SMALLEST IN ARRAY       
       
data segment
    
    array dw 0002,0004,0003,0001
    smallest dw ?
    
    
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
up: mov ax,[si]
    cmp ax,[si+2]
    jb continue
    mov ax,[si+2]
    
continue: add si,2
          dec cx
          jnz up
          
          mov smallest,ax             
     

ends

end start
