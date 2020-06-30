data segment

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    ; add your code here

mov ax,7000h
mov es,ax
mov di,00h
mov ax,0adadh
mov cx,2500
rep stosb

hlt



ends

end start
