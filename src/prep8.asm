
; COPY STRING FROM ONE LOCATION TO ANOTHER

data segment
   
   test_mess db 'manipal'
   db 100 dup(0)
   new_loc db dup(0)
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov es,ax
    
    mov si,offset test_mess
    mov di,offset new_loc
    mov cx,07
    cld
    rep movsb
      

ends

end start
