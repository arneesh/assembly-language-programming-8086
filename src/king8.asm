
;Number of 1st in word
data segment
    
    array db '123411' 
    len db $-array 
    count db ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   mov es,ax
    mov cx,00h
   mov cl,len
   mov si,offset array
   mov ax,00h  
        
back: mov bh,[si]
      cmp bh,'1'
      jnz arn
      inc al
      
arn: inc si
     loop back      
     mov count,al 
       
      hlt  
   

ends

end start
