
data segment
     STR1 DB 'Arneesh$'
    STR2 DB 7 DUP (‘$’)
    MSG1 DB 10,13,’The string to be reversed is : $’
    MSG2 DB 10,13,’Reverse string is : $’
        
ends

DISPLAY MACRO MSG
    MOV AH,9
    LEA DX,MSG
    INT 21H
ENDM   

stack segment
    dw   128  dup(0)
    
    ends

code segment
start:  

MOV AX,DATA
MOV DS,AX                
               
        DISPLAY MSG1
                    
        DISPLAY STR1
                       
        LEA SI,STR2
        LEA DI,STR1
        ADD DI,6
               
        MOV CX,7
REVERSE:
        MOV AL,[DI]
        MOV [SI],AL
        INC SI
        DEC DI
        LOOP REVERSE
       
        DISPLAY MSG2
                   
        DISPLAY STR2
                     
        hlt
CODE ENDS

  

ends

end start
