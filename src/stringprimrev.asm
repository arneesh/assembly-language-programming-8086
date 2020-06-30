data segment
     
     str1 DB 'ARNEESH'   
     str2 DB ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

      

          MOV AX,data
          MOV DS,AX
          mov si,offset str1  
          
          
          MOV ES,AX      
         mov Ax,6h
          add Ax,offset str2     
          mov di,Ax  
          
          MOV CX,7      
          
      UP: CLD
          LODSB
          STD
          STOSB
          LOOP UP
             
          hlt

ends

end start
