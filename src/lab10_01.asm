data segment
   
   a db 32h,45h,09h,10h
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    
    mov ax,data
    mov ds,ax
    mov bx,4
    dec bx
    
    l1: mov cx,bx
    mov si,0h
    
    l2: mov al,a[si]
    inc si
    cmp al,a[si]
    jb l3
    xchg al,a[si]
    mov a[si-1],al
    
    l3:loop l2
    dec bx
    jnz l1
           
          hlt

ends

end start
