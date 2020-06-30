data segment
       
       a dw 2100h
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
      mov ax,a
      mov bx,b
      mov si,e
      cmp dx,si 
      
      mov cx,a 
      mov di,c
      div di
      cmp dx,si  
      
       mov sp,a 
      mov bp,d
      div bp
      mov dx,0
      cmp dx,si
      
      
      
       
      
      
    je label1
      mov ah,09h     ; for displaying year is not leap
      lea dx,print
       int 21h
      
      jmp exit
      
      label1:
      mov ah,09h     ; for displaying year is leap
      lea dx,print1
      int 21h
          
      exit:
      hlt
 

ends

end start    








