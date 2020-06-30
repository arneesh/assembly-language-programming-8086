; COUNT NUMBER OF ONES IN ALPHANUMERIC STRING

data segment
    
    str db '1absh11j'
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
     mov ax,00
     mov cx,00
     mov bx,00  
     mov cl,len       
     mov si,offset str
back:     
     
     
     mov bh,[si]
     cmp bh,'1'
     jnz jana
     inc al

jana: inc si
      loop back     
     
exit: 
mov count,al 

hlt             
     

ends

end start
