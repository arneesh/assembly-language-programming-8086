data segment 
    
   sum db ?
   array db 1h,2h,3h,4h,5h,6h
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

mov ax,data
mov ds,ax

mov ax,[si]
mov 
 

ends

end start
