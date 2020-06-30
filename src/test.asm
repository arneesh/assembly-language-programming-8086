data segment
    num1 db ?
    num2 db ?
    msg1 db 10,13,"Enter first number: $"
    msg2 db 10,13,"Enter second number: $"
    msg3 db 10,13,"Smaller number is: $"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
         mov ax,data
         mov ds,ax
         
         lea dx,msg1
         mov ah,9
          int 21h
         
         mov ah,1
         int 21h
         mov num1,al
         
         lea dx,msg2
         mov ah,9
         int 21h
         
         mov ah,1
         int 21h
         mov num2,al
         
         lea dx,msg3
         mov ah,9
         int 21h
         
         mov al,num1
         
         cmp al,num2
         jg second
         
         FIRST : MOV AH,2
         MOV DL,NUM1
         INT 21H
         JMP EXIT
         
         SECOND: MOV AH,2
         MOV DL,NUM2
         INT 21H
         
         EXIT: MOV AH,4CH
         INT 21H
         HLT
    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start
