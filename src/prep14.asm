
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
   mov cx,00
   mov cx,04
   
   mov si,offset array
   
   dec cx
   
   
back:   mov ax,[si]
        cmp ax,[si+2]
        ja cont
        mov ax,[si+2]
        
        
      cont: ;add si,2
      inc si
      inc si
           dec cx
           jnz back 
           
           
           mov largest,ax
           
           
   
ends

end start 
             
             







             





 


