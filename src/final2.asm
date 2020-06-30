
; SUM OF DIGITS FROM 1 TO 10

data segment
   
  sum db ? 
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   mov ax,data
   mov ds,ax
   
   mov cx,00
   mov ax,00 
   mov cx,10
   mov bl,1
   mov al,00
back:   
   
   
   
   add al,bl
   inc bl
   loop back
   
   mov sum,al
   
     hlt
  
   

ends

end start
