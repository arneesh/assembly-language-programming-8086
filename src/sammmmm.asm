data segment
  COUNT1 dd ffffh
  COUNT2 dd ffffh
  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
 mov data,ax
 mov ds,ax

MOV BX, COUNT1

CNTDN1: MOV CX, COUNT2
CNTDN2: LOOP CNTDN2
DEC BX
JNZ CNTDN1   

ends

end start
