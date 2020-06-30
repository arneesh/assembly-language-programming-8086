
; ASM TO COUNT THE NUMBER OF TIMES e is repeated in a string

data segment
    
    str db 'arneeeesh'
    len db $-str
    count db  ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   mov es,ax
   
   mov si,offset str 
   mov cx,00
   mov cl,len
    mov ax,00
   mov di,00
back:   
   mov bh,[si]  
   cmp bh,'e'
   jnz next
   inc al       
next: 
inc si   
cmp di,cx
je exit:  
      loop back
           
      
   
    
exit: 
mov count,al
hlt   
   
   
ends

end start
