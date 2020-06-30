data segment
     
     d1 dw 0060h,0070h,0032h,0087h,0023h
     small db ?
     
     
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:  

mov ax,data
mov ds,ax
mov es,ax

mov cx,04h

mov si,offset d1
mov ax,[si]

up:
cmp ax,[si+2]
jb continue
mov ax,[si+2]

mov dx,ax
continue:
add si,2
dec cx
jnz up
  
  mov small,al
  

ends

end start
