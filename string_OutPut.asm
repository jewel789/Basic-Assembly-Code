.stack 300h
.data 
  fuck1 db 'hello bitch$'
  fuck2 db 'hello dog$'
  newline db 0dh,0ah,'$'
  
.code 
   main proc 
      mov ax,@data
      mov ds,ax
      
      
      lea dx,fuck1
      mov ah,9
      

      int 21h
      
       
      lea dx,newline 
      mov ah,9
      int 21h
      
      
      
      lea dx,fuck2
      mov ah,9
      int 21h
      
      
      main endp
   endp main
   