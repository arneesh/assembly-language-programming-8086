data segment
      buffer db 10h
      length db 0                  ;Actual length of the string  
    
    MSG1 DB 10,13,'ENTER STRING : $'
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

    
    ;MOV al, length


ends

end start
