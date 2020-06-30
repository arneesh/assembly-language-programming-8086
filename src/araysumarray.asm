
; array ke digits ko add krke naye array mai dalne hai

data segment
   
   array db 23h,42h,12h,13h
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
   mov ch,4h
   
   back:
   mov al,[si]
   mov ah,al
   and al,0fh
   and ah,0f0h 
   mov cl,4h
   shr ah,cl
   add al,ah
   mov [di],al
   inc si
   inc di   
   dec ch
   jnz back

    

ends

end start
