data segment
  
  multiplier dw 0CDABh
  multiplicand dw 0CECDh
  Result dd ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    
    mov si,0h
    clc
    mov ax,multiplier
    imul multiplicand
    mov word ptr Result[si],ax
    mov word ptr Result[si+2],dx
    
      

ends

end start
