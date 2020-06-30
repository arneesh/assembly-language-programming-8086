data segment
    test_mess db 'aloneking'  
    
    db 100 dup(?)
    new_loc 23 dup(0) 
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

mov ax,data
mov ds,ax
mov es,ax
lea si,test_mess
lea di,new_loc
mov cx,09
cld

rep movsb
ends

end start
