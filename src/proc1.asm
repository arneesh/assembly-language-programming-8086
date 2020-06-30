data segment
   
   bcd_input db 17h
   bin_value db ?
   
   
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
    
    mov al,bcd_input
    call bcd_bin
    mov bin_value,al
    nop
    nop 
    hlt
    
    
bcd_bin proc near
    pushf
    push bx
    push cx
    
    
    mov bl,al
    and bl,0FH
    and al,0f0h
    mov cl,04
    ror al,cl
    mov bh,0ah
    mul bh
    
    add al,bl
    
    pop cx
    pop bx
    popf
    ret
    
bcd_bin endp

        

ends

end start
