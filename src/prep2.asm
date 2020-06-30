
; ARRAY ELEMENTS ADD

data segment
   
   array db 12h,15h,23h,15h
   arr1 db 4 dup(0)
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

     mov ax,data
     mov ds,ax
     mov es,ax
     mov si,offset array
     mov di,offset arr1 
     mov ax,00
     mov cx,00
     mov cl,04
     
back: mov al,[si]
      mov ah,al
      and ah,0f0h
      and al,0fh
      shr ah,04
      add al,ah
      mov [di],al
      inc si
      inc di
      loop back
      
      
      
       hlt    

ends

end start
     
                
                







                
     
     
     
     
