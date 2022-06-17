%include "io.inc"

section .text
global CMAIN
CMAIN:

    mov ebp, esp; for correct debugging
   
    GET_DEC 4,eax
    PRINT_DEC 4,eax
    PRINT_STRING " "

     mov edx,0    
    mov ebx,eax
   
   looper:
    mov eax,ebx
    add eax,eax
    
    PRINT_DEC 4,eax    
    PRINT_STRING "  "
    mov ebx,eax

      inc edx
   
     cmp edx, 10
     
    jl looper
    jge exit
    
    
    exit:
     xor eax, eax
    
    ret