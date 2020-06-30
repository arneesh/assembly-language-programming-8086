#start=led_display.exe#
#make_bin#
name "led"

code segment
start: 

mov ax,0

x1: out 199,ax
inc ax
push ax
mov cx,10h
mov dx,4B40h
mov ah,86h
int 15h
pop ax

jmp x1

hlt 
ends
end start
    
