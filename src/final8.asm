
; TWO STRINGSCONCAT 
                       
data segment
    str2 db 'aima'  
ends 

extra segment
    str1 db 'arneesh'    
ends    

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data  
    mov ds,ax
    mov ax,extra
    mov es,ax
    
    mov si,offset str2
    mov di,offset str1+7
 
    mov cx,04
    rep movsb
    
    hlt
        
        
    

ends

end start
