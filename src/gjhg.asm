data segment
str db 1,2,3,4,5,0dh,7,8,9
ends

stack segment                 
    dw   128  dup(0)          
    top label word
ends

code segment
start:
                          
  
  mov ax,stack
  mov ss,ax
  mov sp,offset top
  call STR_SCAN    
  
  hlt
  
  STR_SCAN proc near
    push bx
    push cx
    push dx
    pushf
    
    mov Ax,data
    mov es,AX
    mov di,offset str
    mov al,0dh
    mov cx,09
    cld
    repnz scasb
    jnz label
    
    mov al,09h
    jmp next 
    
    label:
    mov al,50h
    
    next:   
    popf
    pop dx
    pop cx
    pop bx
    
    ret
    
  endp
    
     
  
ends

end start
