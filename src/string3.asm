data segment
     
     msg db 'home'
     db 100 dup(?)
     new_loc db 23 dup(0)
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

mov ax,data
mov ds,ax
mov es,ax
lea si,msg
lea di,new_loc
mov cx,23
cld
rep mouse          
          
          
ends

end start
