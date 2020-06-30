data segment
    a dw 1234h
    b dw 2450h
    c dw 2458h
    d dw 3001h
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
      mov ax,data
      mov ds,ax
      
      lea si,a
      mov ax,[si]
      inc si
      inc si 
      
      lea si,b
      mov bx,[si]
      inc si 
      inc si  
      
      lea si,c
      mov cx,[si]
      inc si 
      inc si
              
      lea si,d        
      mov dx,[si]
      inc si 
      inc si
       
       hlt
      
    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start
