data segment
  
  str db 'arn123'
  len db $-len
  count db ?
  count1 db ?
  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov si,offset str
     mov bh,[si]
      

ends

end start
