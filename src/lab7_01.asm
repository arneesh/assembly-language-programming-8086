data segment
    array dw 0001h,0002h,0003h,0004h,0005h 
    sum dw ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:  

mov ax,data
mov ds,ax
mov ax,0 
lea si,array
mov cx,0005h

back:
add ax,[si]
inc si
inc si
loop back 

mov sum,ax


   

ends

end start
