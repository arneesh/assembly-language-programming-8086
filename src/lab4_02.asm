data segment
    num1 db 11100000b
    num2 db 00000111b
    num3 dw 1111000000000000b
    num4 dw 0000000000001111b   
    Leftshift8bit db ?
    Rightshift8bit db ?
    Leftshift16bit dw ?
    Rightshift16bit dw ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax 
    mov al,0
    mov ah,0
    mov al,num1
    shl al,1 
    mov Leftshift8bit,al
    
    mov bh,0
    mov bl,num2
    shr bl,1
    mov Rightshift8bit,bl
    
    mov cx,num3
    shl cx,1 
    mov Leftshift16bit,cx
    
    mov dx,num4
    shr dx,1 
    mov Rightshift16bit,dx
    hlt
  

ends

end start
