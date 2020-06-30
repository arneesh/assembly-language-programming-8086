data segment
     
     str db 0DH,10 dup('$')
     
     
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

 mov ax,data
 mov ds,ax
 mov es,ax
 
 mov dx,offset str
 mov ax,0Ah
 int 21h
 
 mov si,offset str+2
 lea di,dst
 mov si,[si-1]
 
 back: lodsb
 cmp al,0
 
 

ends

end start
