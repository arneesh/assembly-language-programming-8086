
; MULTIWORD ADDITION

data segment
    
    d1 db 0FFh,0FFh,0FFh,0FFh
    d2 db 0FFh,0FFh,0FFh,0FFh
    sum db 5 dup(0)
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
      
     mov ax,data
     mov ds,ax
     mov es,ax
     
     mov si, offset d1+3
     mov di, offset d2+3
     mov bx, offset sum+4
     
     mov cx,04h
     
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

 noor: mov [bx],01h      
       hlt
     
ends

end start
