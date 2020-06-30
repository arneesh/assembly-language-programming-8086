data segment
    
    msg db 'hello'
    cnt equ $-msg
    src equ 'e'
    
    msg1 db 'char found$'
    msg2 db 'not found$'
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    lea si,msg
    mov al,src
    mov cl,cnt
    mov ch,00h
    cld
    
up:
    scasb
    jz down
    loop up
    
    lea dx,msg2
    mov ah,09h
    int 21h
    jmp exit
    
    
down: lea dx,msg1
      mov ah,09h
      int 21h
      
exit:
      hlt         

ends

end start
