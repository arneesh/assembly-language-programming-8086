
; count numv=ber of o's n 1s

DATA SEGMENT
NO DW 6H
Zero DW ?
Onee DW ?
DATA ENDS
 
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX, DATA
MOV DS, AX
MOV AX, NO
MOV BX, 00H
MOV CX, 10H
MOV DX, 00H
 
UP:
ROL AX,1
JC ONE
INC BX
JMP NXT
 
ONE:
INC DX
 
NXT:
DEC CX
JNZ UP
 
MOV Zero, BX
MOV Onee, DX
 
hlt
CODE ENDS
END START