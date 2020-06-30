; CALCULATE SUM OF DIGITS OF A NUMBER

data segment
    
    num dw 1234h
    sum dw ?
    b dw 00h
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax 
    
    mov si,b
    mov cx,5h
    mov bl,10h
    mov dx,00 
    mov ax,num
back:    
    
    div bx
    add si,dx 
    loop back
    
    mov sum,si

ends

end start  




      
    


  