
; ARRAY ELEMENTS ADD

data segment
   
   array db 001b,010b,110b,101b
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
     
back:  mov al,00 
     mov bh,[si]
      cmp bh,0
       
      jnz field
      inc al
      
field: inc si
       mov [bx],al
       inc di 
loop  back


      
      
      
      
     hlt   
ends

end start
     
                
             
