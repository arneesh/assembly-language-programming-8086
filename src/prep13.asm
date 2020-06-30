
; number of times e a is repeated in string

data segment
   
   str db 'arneeshaa'
   len db $-str
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
   
   mov si,offset str
   
   mov bx,00
   mov cx,00
   mov ax,00
   mov cl,len 
    
back:      
     mov bh,[si]
     cmp bh,'a'
     jnz arny
     inc al
         
     
arny: inc si
      loop back     
                
      mov count,al          
                
ends

end start
