
; REVERSE A STRING

data segment
  
   str1 db 'arneesh'
   len db $-str
   str2 db ?
   
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
     mov ax,data
     mov ds,ax
     mov es,ax
     mov si,offset str1    
         
         
     mov ax,7h
     add ax,offset str2
     mov di,ax
     mov cx,7
     
up: cld
    lodsb
    std
    stosb
    loop up
    
    hlt     
      

ends

end start
