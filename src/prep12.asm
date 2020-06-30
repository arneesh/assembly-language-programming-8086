; MULTIWORD ADDITIOM

data segment
    
   str1 db 0FFh,0FFh,0FFH,0FFh
   str2 db 0FFh,0FFh,0FFH,0FFh
   sum db  5 dup(0)
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

     mov ax,data
     mov ds,ax
     mov es,ax
     
     mov si,offset str1 + 3
     mov di, offset str2 + 3
     mov bx,offset sum + 4 
     
     mov cx,4
     
arny: mov al,[si]
      mov [bx],al
      mov al,[di]
      adc [bx],al
      dec si
      dec di
      dec bx
      loop arny
       
       
      jc noor
      hlt
      
noor: 
    mov al,01
    mov [bx],al      
      

ends

end start
                                   
          
          
          
          
                                   