data segment
   
   string1 db 'manipal'
   string2  db 'manipal' 
   
   result1 db 'equal$'
   result2 db 'notequal$'
   
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov si,offset string1
    mov di,offset string2
    cld
    mov cx,07
    
back: cmpsb
      jne exit
      loop back
      

mov ah,09h 
lea dx,result1
int 21h

 hlt    
     
exit:      
      mov ah,09h
      
      lea dx,result2
      int 21h
          
ends

end start
