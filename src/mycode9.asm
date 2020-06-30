data segment
    a dw 2345H
    b dw 3219H
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:     

mov ax,data
mov ds,ax
mov ax,a
add ax,b
hlt

    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start
