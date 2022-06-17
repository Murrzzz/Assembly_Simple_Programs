%include "io.inc"

section .data
    msg db 'fahrenheit', 0

section .text
    global CMAIN
CMAIN:
    mov ebp, esp
   
    
    GET_DEC 4,eax
    mov ebx, 32
    sub ebx, eax
    
    mov eax, ebx ;put the vlue in eax
    mov ebx, 5
    mul ebx
    mov ebx,9
    div ebx
    
    ;Output
    PRINT_DEC  4, eax
    PRINT_STRING msg
    
    
    NEWLINE
    xor eax, eax
    ret