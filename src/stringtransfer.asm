data segment
    
    str1 db 'hello'
    len equ $-str1
    str2 db 20 dup(0)
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:  

mov ax,data
mov ds,ax
mov es,ax

mov si,offset str1
mov di,offset str2

mov cx,len
cld
rep movsb

hlt


ends

end start
