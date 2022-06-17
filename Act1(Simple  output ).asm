%include "io.inc"

section .data


section .bss
num resb 2
    
section .text
global CMAIN   
CMAIN:
    mov ebp, esp; for correct debugging
    
    
    
     GET_DEC 4,eax
     
     PRINT_STRING "MY FAVORITE NUMBER IS "
     PRINT_DEC 4,eax 
    
   
    xor eax, eax
    ret    