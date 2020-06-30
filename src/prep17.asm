data segment
   
   number db 6h
   cone db  ?
   czero db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   mov ax,data
   mov ds,ax
   mov es,ax 

ends

end start
