data segment
    prompt db 13,10,"Enter first number to multiply. $"
 prompt2 db 13,10,"Enter second number to multiply. $"
 res db 13,10,"The answer is $"

 ans dw 2
 hold db 0 
 n1=0
 n2=0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,seg prompt,prompt2,res,ans,hold,n1,n2
mov ds,ax

mov ah,09h
mov dx,offset prompt                     
int 21h

call read                

mov n1,bl            
mov ah,09h
mov dx, offset prompt2           
int 21h

call read                
mov n2,bl            


call Algorithm              

 mov [ans],ax          
 mov bx,ax

 mov dx,offset res           
 mov ah,09h
 int 21h

 call write              

 mov ah,4ch
 int 21h

 hlt

read:                       
 mov ah,00h             
 mov [hold],bl

f0:
 mov al,01h              
 int 21h                 
 cmp al,0dh             
 je Copy                   
 mov cl,al              
 sub cl,30h            
 mov al,[hold]           
 mov bl,0ah              
 mul bl                  
 mov [hold],al           
 add [hold],cl           
 jmp f0                 


Copy :
 mov bl,[hold]           
 ret                     

Algorithm:                     
 mov ah,0              
 mov al,n1         
 mov cx,8                
 mov bh,n2         
 clc      

f1:
 mov bl,al      
 and bl,1                
 jnz f2               
  JNC f3               
  sub ah,bh               
 jmp f3

f2:
 jc f3
 add ah,bh

 f3:
  shr ax,1
  loop f1
  ret

write:
 mov al,bl
 lea di,[ans]
 mov bh,0ah
 mov cl,24h
 mov [di],cl
 dec di

f4:
 mov ah,00h
 div bh
 add ah,30h
 mov [di],ah
 dec di
 cmp al,00h
 jnz 4
 inc di
 mov ah,09h
mov dx,di
 int 21h
 

ends

end start
