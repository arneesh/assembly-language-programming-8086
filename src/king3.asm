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
    mov es,ax
    
    mov si,offset array
    mov cx,05h
    mov ax,00h
next: add ax,[si]
      
      inc si
      inc si 
      
      loop next 
      
      mov sum,ax 
      hlt
ends

end start  



