
; no of zeros and one's in a number

data segment
   
   arr db 6h,8h 
   arr1 db 2 dup(0)
   cone db ?
   czero db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax,data
    mov ds,ax
    mov es,ax 
    
    mov cx,00
    mov ax,00 
    
    mov si,offset arr
    mov di,offset arr1
    ;mov dl,[di]
   
    
    mov cl,08
    mov bx,00
    mov al,[si]
back: 
         
    shr al,01
    jnc l1
    inc bl
    
l1: 
    
        
     
      dec cl
     jnz  back 
     
     mov [di],bl
     
     mov cx,00 
     mov cx,8
     mov si,offset arr 
     mov al,[si+1]

     
back1: 
         
    shr al,01
    jnc l2
    inc bl
    
l2: 
    
        
     
      dec cl
     jnz  back1  
     
     mov [di+1],bl
     
     
     hlt  
     
     
     
           
     
           
           
           
           
           
           
           
           
     ;mov dh,8
     ;sub dh,bl
     ;mov czero,dl
     
     
     
    hlt
    
ends

end start
