data segment
  
  arr dw 10h,52h,77h,90h,56h
  lar dw ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov cx,05
    
    lea si,arr
    mov ax,[si]
    dec cx
    
    up: cmp ax,[si+2]
    ja continue
    mov ax,[si+2]
    
    continue:add si,2
    dec cx
    jnz up
    mov lar,ax
    hlt

ends

end start
