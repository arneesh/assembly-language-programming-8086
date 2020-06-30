data segment
   
   num db 3h
   ans db ?
   
   
ends

stack_seg segment stack
    dw   128  dup(0) 
    top_stack label word
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov ax,stack_seg
    mov ss,ax
    mov sp,offset top_stack
    
    
    call fact
    mov ans,al
    nop
    nop 
    hlt
    
    
fact proc near
    pushf
    push bx
    push cx
     mov ax,00
     mov cx,00 
     mov cl,3
     mov bl,num
    
    mov al,01h
nalla:     
    
    
    mul bl
    dec bl
    loop nalla
    
    
    
    pop cx
    pop bx
    popf
    ret
    
fact endp

        

ends

end start
