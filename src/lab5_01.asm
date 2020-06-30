data segment
       number db 07h
       b db 02h 
       c db 00h
     
      print1 db "Number is Even $"
       print db "Number is Odd  $ " 
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:        
      mov ax,data
      mov ds,ax
      mov cl,c
      mov al,number
      mov bl,b 
      mov ah,0
      div bl 
      
      cmp ah,cl
      
      je label1
      mov ah,09h     ; for displaying number is odd
      lea dx,print
       int 21h
      
      jmp exit
      
      label1:
      mov ah,09h     ; for displaying number is even
      lea dx,print1
      int 21h
          
      exit:
      hlt

   
ends

end start

