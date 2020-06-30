data segment
     
   str db 'arneeshaima'
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
    mov si,offset str
    mov ax,00
    mov ah,[si]
    
    mov bl,len
    mov al,bl
    
    mov lengthofstring,al 

ends

end start
