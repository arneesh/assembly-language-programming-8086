data segment

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    ; add your code here 
    mov ah,00h
    mov al,11111111b
    mov dl,11111111b
    mov cx,08
    clc
     
loop1:     
    mov bl,al
    
    jnc label0
    jc label1
    
    label0:
    and bl,00000001b
    cmp bl,00h                
    
    jnz label10
    jz label00
    
    label10: 
    sub ah,dl
    sar ax,01h
    loop loop1
    
    label1:  
    and bl,00000001b
    cmp bl,01h
    
    jnz label01
    jz label00
    
    label01:
    add ah,dl
    sar ax,01h 
    loop loop1
    
    label00:
    sar ax,01h 
    loop loop1             
    
    hlt
      

ends

end start
