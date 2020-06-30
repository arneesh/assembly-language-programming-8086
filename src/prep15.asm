data segment
   
   array dw 0002,0001,0004,0007
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
    
    mov cx,04
    
    mov si,offset array
    dec cx 
    mov ax,[si]
      
back:  
       cmp ax,[si+2]
      jb cont
      mov ax,[si+2]
      
      cont: add si,2
            
           dec cx
           jnz back
           
           mov smallest,ax         
      
      
ends

end start
    
    
    
    
    

;Largest in array
       
; SMALLEST IN ARRAY       
       
