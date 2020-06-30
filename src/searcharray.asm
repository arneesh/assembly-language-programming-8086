data segment       
    
    ; LINEAR SEARCH
    
    array db 1h,2h,3h,4h,5h,6h,7h,8h,9h,0h
    msg1 db 'Found $'
    msg2 db 'Not found $'
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax,data
    mov ds,ax
    mov si,0h
    mov cx,0ah
back:
mov al,BYTE PTR ARRAY[si]
cmp al,06h   ; ENTER THE NUMBER TO BE FOUND
je found
inc si
loop back

lea dx,msg2
mov ah,09h
int 21h
mov ah,4ch
int 21h

Found:
lea dx,msg1
mov ah,09h
int 21h

    

  

ends

end start
