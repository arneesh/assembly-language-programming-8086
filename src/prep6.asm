
; LENGTH OF STRING

data segment
   
   str db 'arneesh'
    len db $-str
    lengthofstring db  ?
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   mov ax,data
   mov ds,ax
   
   mov al,len
   
   mov lengthofstring,al
     

ends

end start
