data segment
    number1 db 19h
    number2 db 15h 
    product dw ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax,data
    mov ds,ax 
    mov dl,number1 ; filling registers with the desired numbers
    mov dh,number2
    mov ax,0000h
    mov bl,dl  ; the number 25
    mov bh,00h
    mov cl,08h
    mov ch,dh   ;the numbr 21
    
    next: shl ax,01h
          shl ch,01h
          jnc skip
          add ax,bx
          
    skip: dec cl
          jnz next
         
         
         mov product,ax 
    hlt
      

ends

end start
