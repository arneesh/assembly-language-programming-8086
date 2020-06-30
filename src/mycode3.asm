data segment
    a dw 1234H
    b dw 2212H
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
    ASSUME CS:code,DS:data
start: 
] 

          
         mov ax,data 
         mov DS,ax
         mov ax,a
         add ax,b
         
         
         hlt
         
    ; add your code here

    mov ax, 4c00h
int 21h  

ends

end start
