data segment
 
 str1 db 'arneesh$'
 length db ?
 
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

mov ax,data
mov ds,ax
cld
mov al,'$'
mov cx,00h
lea si,str1

back:cmp al,[si]
je cal
inc cl
inc si
jmp back

cal:mov length,cl
     hlt

ends

end start
