data segment
    STR1 DB 'HELLO'
   LEN EQU $-STR1
   STR2 DB 20 DUP(0)
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

     MOV AX,DATA
          MOV DS,AX
          MOV ES,AX
          LEA SI,STR1
        ;  LEA DI,STR2+LEN-1  
         lea di,str2
         add di,len
         dec di 
          MOV CX,LEN
      UP: CLD
          LODSB
          STD
          STOSB
          LOOP UP
          MOV AH,4CH
          INT 21H 

ends

end start
