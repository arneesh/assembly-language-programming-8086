data segment
    
    pass db 'abcdefg'
    len db $-pass
    str db 20 dup('$')
    msg1 db 'valid_user$'
    msg2 db 'invalid_user$'
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov cl,0h
    mov cx,8
   ; mov bl,len
    mov si,offset pass
    mov di,offset str
    
back:
mov ah,08h ; read character without echo
int 21h
stosb
cmp al,'$'
jz l1
inc cl
mov dl,'*'
mov ah,02h
int 21h
loop back

l1:
inc cl
   cmp cl,len
   jnz msg
   cld
   mov di,offset str
   
baoom: 
       cmpsb
       jnz msg
       loop baoom
       lea dx,msg1
       mov ah,09h
       int 21h
       jmp exit
       
msg: 
     lea dx,msg2
     mov ah,09h
     int 21h
     
exit:
      hlt
      

ends

end start
