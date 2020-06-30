data segment
    
    a dd 111DEF00h
    b dw 0AAAAh
    quo dw ?
    rem dw 0h

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
        mov ax,data
        mov ds,ax
        mov si,0h
        mov ax,word ptr a[si]
        mov dx,word ptr a[si+2]
        idiv b
        mov quo,ax
        mov rem,dx
        
        
ends

end start
