data segment
    
 str db 'hey123' 
 len db $-str
 num db ?   
    
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
   mov ax,00
   mov cl,len
   mov bx,00 
     
back:     
   mov bh,[si]
   cmp bh,'#'
   
   jnz label  
label:   
inc si 
inc al
loop back

jmp exit 
mov num,al
hlt

exit: 
mov num,al
hlt
 

ends

end start
