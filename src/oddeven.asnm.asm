data segment
       a db 06h
       b db 02h
     
      print1 db 10,13,"number is even" 
       print db 10,13,"number is odd  $ " 
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:        
      mov ax,data
      mov ds,ax
      mov al,a
      mov bl,b
      div bl
      jmp label1
      mov ah,09h     ; for displaying a is not equal to b
      lea dx,print
       int 21h
      
      jmp exit
      
      label1:
      mov ah,09h     ; for displaying a is equal to b
      lea dx,print1
      int 21h
       
      exit:
      hlt

    ; add your code here

mov ax, 4c00h
int 21h  

ends

end start

