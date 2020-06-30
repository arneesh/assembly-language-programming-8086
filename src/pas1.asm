data segment
      buffer db 10h
      length db 0                  ;Actual length of the string  
        pass db 'arneesh'
    MSG1 DB 10,13,'ENTER STRING : $'  
    msg2 db 'correct'
    msg3 db 'incorrect'
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

   MOV AX,data
    MOV DS,AX
    ; display message 
    LEA DX,MSG1
    MOV AH,09H
    INT 21H
    
       ; Transferring to buffer using dx register
    MOV AH,0AH
    MOV DX,OFFSET buffer
    INT 21H  
    mov di,offset buffer
    
    mov bx,00
    mov si,offset pass
     mov cx,00
     mov cx,8
    back:
    
    mov sp,[si]
    mov bp,[di]
    cmp sp,bp
    je exit
    
    loop back
    
    exit:lea dx,msg2
    mov ah,09h
    int 21h
    
    
    
    
    
    


ends

end start
