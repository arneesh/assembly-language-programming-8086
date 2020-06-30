
; COUNT NUMBER OF EVEN AND ODD NUMBERS IN AN ARRAY

data segment
   
   array db 2h,8h,7h,5h 
   len  db $-array
   odd db ?
   even db ?
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    mov bh,00
    mov ax,00
    mov dx,00
    mov si,offset array 
    mov cx,00
    mov cx,04 
    mov bl,02
back:    
    
    mov al,[si]
    div bl
    cmp ah,bh
    jnz label1
    inc dl
    
label1:
      
      inc si
      loop back    
    
 mov even,dl
 mov dh,len
 sub dh,dl
 
 mov odd,dh
 
 
 hlt   
    
    
    

ends

end start
