
;multi-segment executable file temperature 

#start=Traffic_Light.exe#




data segment
    
    ;                    FEDC_BA98_7654_3210
situation        dw      0000_0011_0000_1100b
s1               dw      0000_0110_1001_1010b
s2               dw      0000_1000_0110_0001b
s3               dw      0000_1000_0110_0001b
s4               dw      0000_0100_1101_0011b
sit_end = $


;all_red          equ    0000_0010_0100_1001b
    
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

;set segment registers:
mov ax,data
mov ds,ax
mov es,ax

mov si,offset situation
next:mov ax,[si]
out 4,ax

;wait 5 seconds ( 5 million microseconds)
mov cx,4ch ; 004c4b40h = 5,000,000
mov dx,4B40h

mov ah,86h
int 15h

add si,2 ; next situation
cmp si,sit_end
jb next
mov si,offset situation
jmp next

hlt  

ends

end start
