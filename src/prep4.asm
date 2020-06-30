
; DECLARE ARRAY AND CALCULATE SUM OF ELEMENTS


data segment
   
   array dw 0001h,0002h,0003h,0004h
   sum dw ?
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov ax,00
    mov cx,00 
    mov cl,04 
    mov si,offset array
back:    
    
    add ax,[si]
    inc si
     inc si
    
    loop back
    
    mov sum,ax
    
     

ends

end start
