data segment
   
  sum db ?  
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov data,ax
    mov ds,ax
    mov es,ax 
    mov ax,00
    mov bx,00
    mov cx,11
back: 
      add ax,bx
      inc bx 
       
      loop back
      
     hlt 

ends

end start
