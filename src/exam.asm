data segment

ends
 
x_seg segment
   x dw 1234h
ends

y_seg segment
  y  dw 2341h
ends

z_seg segment
  z dw 1111h
ends

      
  
  
stack segment
    dw   128  dup(0)
ends

code segment
start:
assume ds:x_seg,es:y_seg,ss:z_seg

mov ax,x_seg
mov ds,ax  

mov ax,y_seg
mov es,ax

mov ax,z_seg
mov ss,ax  

mov ax,00
mov ax,x
add ax,es:y
add ax,ss:z  

hlt



ends

end start
