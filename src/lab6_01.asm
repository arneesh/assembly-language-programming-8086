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
 
 CAL:
    ADD AX, BX                    
    INC BX                       
    LOOP CAL           
       
     mov sum,ax  
     hlt
    
  

ends

end start
