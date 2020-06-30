data segment
    a dw 5D90H
    b dw 4AE0H
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:     

mov ax,data
mov ds,ax
mov ax,a
sub ax,b
hlt

    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start
