data segment
    maxlen db 20
    len db ?
    str db 20 dup('$')
    pal db 'is palindrome_string$'
    npal db 'is not_palindrome string$'
    
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start: 

mov ax,data
mov ds,ax
mov es,ax

mov dx,offset maxlen
mov ah,0ah ; input string
int 21h

mov al,len
mov ah,00h
mov bl,02h
div bl
mov cl,al
mov ch,0h
lea si,str
mov di,si
mov al,len
mov ah,0h
add di,ax
dec di

back: cld
lodsb
std
scasb
jnz np
loop back

lea dx,pal
mov AH,09H
INT 21H
JMP EXIT

np: lea dx,npal
   mov ah,09h
   int 21h
   
exit: hlt   

  

ends

end start
