data segment
    sum dw ? 
    
ends

stack segment
    dw   128  dup(0)
ends
      
code segment
start:

    MOV AX, DATA
    MOV DS, AX
 
    MOV AX, 00
    MOV BX, 00
    MOV CX, 11
 
 TOP:
    ADD AX, BX                    
    INC BX                       
    LOOP TOP           
       
     mov sum,ax  
     hlt
    
mov ax, 4c00h
int 21h  

ends

end start
