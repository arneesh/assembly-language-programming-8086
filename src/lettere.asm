data segment
  
  string db 'exercise'
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
MOV SI, offset string 
mov cx,00 
mov cx,8
mov di,00

;MOV Cl,length

Back: 
MOV BH, [SI]
CMP BH,'e' 
JNZ Label
INC AL

Label: 

 INC SI
  
 cmp cx,di
je exit
LOOP Back


exit:
 MOV Ans, AL
hlt 

ends

end start
