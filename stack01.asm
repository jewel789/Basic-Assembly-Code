include 'emu8086.inc'
.model small 
.stack 100h          ;100h address  where Stack pointer start from 
.data 

.code 

main proc 
    ;stack pointer (sp) - 0100h(address)
    mov ax,'9'
    mov bx,'2'   
                       
    push ax   ;ax(address)=100h and sp=sp-2h 
    push bx   ;bx(address)=0FE  and sp=sp-2h
    
    pop cx    ;cx(address)=0FE  and sp=sp+2h
    
    mov ah,2
    mov dx,cx
    int 21h
    
    
    
    pop dx     ; dx(address)=0100h and sp+2h

    mov ah,2
    int 21h
    
    
    main endp
 end main
    
    
    
    
    
