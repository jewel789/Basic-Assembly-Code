.model medium 
.stack 200h
.data 
  a db ?
  b db ?
  c db ?
  k db ?

 zerro db 0
 newline db 0dh,0ah,'$'
 space   db ' $'

.code 

main proc 
    
    mov ax,@data
    mov ds,ax
    
    
    mov a,0
    mov b,0
    mov c,0
    
    
    
    mov ah,1
    int 21h
    mov a,al  
    sub a,'0'
    
    
    mov ah,1
    int 21h
    mov b,al
    sub b,'0'
    
    lea dx,newline 
    mov ah,9
    int 21h
    
     
    mov al,a
    mov ah,0
    div b 

  
    mov c,al   ; al=> qutient  
    add c,'0'  
    mov k,ah
    add k,'0'  ; ah=> remainder 
    
    mov dl,c
    mov ah,2
    int 21h                  
  
    mov ah,2
    mov dl,k
    int 21h
    
    exit:
    
    mov ah,4ch
    int 21h
    
    
    
   main endp
end main
    