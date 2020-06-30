data segment
    VAL1 DB 50
    STR DB "Sum = $"
ends

stack segment
    dw   128  dup(0)
ends
      
RUN MACRO                         ; Macro to display the contents of AL
    AAM
    ADD AX, 3030H
    MOV DL, AH
    MOV DH, AL
    MOV AH, 02H
    INT 21H
    MOV DL, DH
    MOV AH, 02H
    INT 21H
ENDM
      
code segment
start:

    MOV AX, DATA
    MOV DS, AX
 
    MOV DX, OFFSET STR            ; Copies the address of the string STR to DX
    MOV AH, 09H                   ; Function to print the string pointed by DX
    INT 21H
 
    MOV AX, 00
    MOV BX, 00
    MOV CX, 101
 
 TOP:
    ADD AX, BX                    ; AX and BX are added up and stored in AX
    INC BX                        ; Increases the value of BX by 1
    LOOP TOP                      ; Decrease the value of CX by 1 and jump to TOP if it is not 0
 
    MOV CX, 100                   ; Store the value 100D in CX
    MOV DX, 00 
    DIV CX                        ; Divide AX by CX to separate higher and lower bit
 
    PUSH DX                       ; Push DX on top of the stack
    RUN                           ; Calls macro RUN
    POP AX                        ; Pop from stack and store it in AX
    RUN                           ; Calls macro RUN

mov ax, 4c00h
int 21h  

ends

end start
