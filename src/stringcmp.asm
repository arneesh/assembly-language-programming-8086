data segment
   password db 'arneesh'
   str_length equ ($ - password)
   input_word db 7 db(0)
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    
assume cs:code, ds:data,es:data

mov ax,data
mov ds,ax
mov es,ax
mov dx,0fffeh
mov al,99h
out dx,al
lea si,password
lea di,input_word
mov cx,str_length
cld
repe cmpsb
jne sound_alarm
jmp ok

sound_alarm: mov al,01
             mov dx,0fffah
             out dx,al
             hlt
             
ok: nop
             
             


mov ax, 4c00h
int 21h  

ends

end start
