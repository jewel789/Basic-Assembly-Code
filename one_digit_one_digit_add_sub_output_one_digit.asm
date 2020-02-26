.model small 
.stack 200h
.data
 newline db 0dh,0ah,'$'
 space db ' $'
 
 number1 db ?
 number2 db ?
 result db ?
 temp   db ? 
 
 



.code 
main proc    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,1
    int 21h
    mov number1,al
    int 21h
    mov number2,al
    mov bl,number2
    
    add bl,number1   ;bl(number2) + = number1
    
    sub bl,48d       ; ascii to decimall convert 
    
    mov result,bl
    mov ah,2
    mov dl,result
    int 21h
    
    mov bl,number1
    
    sub bl,number2     ;bl(number1) - = number2 
    
    add bl,48d         ; ascii to digit convert
    
    mov result ,bl
    
    
    mov ah,2
    mov dl,result 
    int 21h
    
    
  exit:  
    mov ah,4ch    ;........
    int 21h       ;as exit 
                  ;........
    
endp main
end  main
    
                                