EXTRA SEGMENT
INST1 DB 20 DUP(0)
EXTRA ENDS
DATA SEGMENT
INST2 DB 20 DUP(0)
RESULT DB 40 DUP(0)
MSG1 DB 10,13,'ENTER THE FIRST STRING: $'
MSG2 DB 10,13,'ENTER THE SECOND STRING: $'
MSG3 DB 10,13,'CONCATENATED STRING IS: $'
NEW DB 10,13,'$'
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA,ES:EXTRA
START:
MOV AX,DATA
MOV DS,AX
MOV AX,EXTRA
MOV ES,AX
LEA DX,MSG1
MOV AH,09H
INT 21H
MOV BX,000
UP1:
MOV AH,01H
INT 21H
CMP AL,0DH
JE DOWN1
MOV [INST1+BX],AL
INC BX
JMP UP1
DOWN1:
LEA DX,NEW
MOV AH,09H
INT 21H
LEA DX,MSG2
MOV AH,09H
INT 21H
MOV CX,BX
MOV BX,00
UP2:
MOV AH,01H
INT 21H
CMP AL,0DH
JE DOWN2
MOV [INST2+BX],AL
INC BX
JMP UP2
DOWN2:
PUSH BX
MOV DI,0
MOV SI,0
UP3:
MOV AL,[INST1+DI]
MOV [RESULT+SI],AL
INC SI
INC DI
LOOP UP3
POP CX
MOV DI,0
UP4:
MOV AL,[INST2+DI]
MOV [RESULT+SI],AL
INC SI
INC DI
LOOP UP4
LEA DX,NEW
MOV AH,09H
INT 21H
LEA DX,MSG3
MOV AH,09H
INT 21H
MOV [RESULT+SI],'$'
LEA DX,RESULT
MOV AH,09H
INT 21H
INT 3
CODE ENDS
END START
END