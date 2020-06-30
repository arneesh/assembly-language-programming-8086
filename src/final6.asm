data segment
     
  str1 db 'arneesh'
  str2 db 'aima'
  ;len db $-str1
  ;len1 db $-str2
  
     
     
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
       mov di,offset str2 
       mov ah,00
       mov ah,[si]
       mov al,[di]
       

ends

end start
