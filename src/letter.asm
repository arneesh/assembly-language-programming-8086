data segment
    
    string db 'arneesh$'
    ans db ?
    length db $-string
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
  
MOV AX,data
MOV DS, AX
MOV AL,00H
MOV SI,offset string
MOV Cl,Length
Back:
 MOV BH,[SI]
CMP BH,'e'
JNZ Label
INC AL
Label: 
INC SI
LOOP Back
jmp exit
MOV Ans, AL
hlt 

exit :
hlt



ends

end start
