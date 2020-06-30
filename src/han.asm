data segment
    
    string db 'Arneeshaa'
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
mov cx,00
MOV Cl,length
Back:
 MOV BH,[SI]
CMP BH,'A'
JNZ Label
INC AL
Label: 
INC SI
LOOP Back 


mov si,00
mov bx,00
mov cx,00
mov cl,length
mov si,offset string 

back1:
mov bl,[si]
cmp bl,'a'
jnz label1
inc al
label1:
inc si
loop back1


jmp exit

exit: 
MOV Ans, AL
hlt



ends

end start
