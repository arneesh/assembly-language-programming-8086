; ALP TO FIND AN YEAR IS LEAP YEAR OR NOT

data segment
       
       a dw 2000h
       b dw 0004h
       c dw 0100h
       d dw 0400h
       e dw 0000h 
       
       print1 db "It is leap year $" 
       print db "It is not a leap year $"
        
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:        
      mov ax,data
      mov ds,ax
            
      mov si,e      
      mov ax,a   ; COMPARISON WITH 4
      mov bx,b
      div bx
      cmp dx,si 
      
      mov ax,a    ; COMPARISON WITH 100
      mov bx,c
      div bx
      cmp dx,si  
      
       mov ax,a    ; COMPARISON WITH 400
      mov bx,d
      div bx
      
      cmp dx,si
      
      
      
       
      
      
    jne label1
      mov ah,09h     ; for displaying year is not leap
      lea dx,print1
       int 21h
      
      jmp exit
      
      label1:
      mov ah,09h     ; for displaying year is a leap
      lea dx,print
      int 21h
          
      exit:
      hlt
 

ends

end start    








