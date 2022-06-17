%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    

    mov ebx,0
    mov ecx,0
    mov edx, 0
    GET_DEC 4, eax
       
      loops:
       cmp ebx,eax
    jge exit
 NEWLINE
        add ebx,1
        mov ecx,0
    loopers:
     
   cmp ecx, eax
   jae loops
    inc ecx
    
    PRINT_STRING "*"
   jmp loopers
   
  
   
   
    
    
    exit:
    xor eax, eax
    ret