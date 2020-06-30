data segment
    
STR DB 'This is a Test Program'
COUNT1 DW $-STR
SUB_ST DB 'is'
COUNT2 DW $-SUB_ST
RESULT DW 0
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

; set segment registers:
 mov ax, data
 mov ds, ax
 mov es, ax
MOV CX, COUNT1 ; CX contains length of main string.
MOV BX, COUNT2 ; BX contains length of sub string.
LEA SI, SUB_ST ; get base address of sub string.
LEA DI, STR ; get base address of main string.
CALL STRING_FIND ; call subroutine
MOV RESULT, BX
HLT
STRING_FIND PROC
CLD ; Auto increment mode.
NEXT:
MOV AL, [SI]
REPNZ SCASB ; do this till first character match with
MOV BP, DI ; keep the first match in BP
INC SI
; string.
MOV DX, CX
DEC BX
SUB CX, BX
JB STOP
MOV CX,BX





REPZ CMPSB ;match sub string with rest of the character of main string
JNZ NOT_FOUND
MOV BX, BP
END_ALL:
RET
STOP:
MOV BX, -1
JMP END_ALL
NOT_FOUND:
MOV CX,DX
LEA SI, SUB_ST
MOV BX, COUNT2
JMP NEXT
ENDP


ends

end start
