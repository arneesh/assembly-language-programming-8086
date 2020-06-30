data segment
       HI_TEMP db 92h
       LO_TEMP db 52h
       AV_TEMP db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,data
    mov ds,ax
    mov AL,HI_TEMP
    add AL,LO_TEMP
    mov ah,00h
    adc ah,00h
    mov bl,02h
    div bl
    mov AV_TEMP,al
    hlt 

ends

end start
