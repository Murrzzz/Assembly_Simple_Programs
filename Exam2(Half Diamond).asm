%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    mov eax,0
    mov ebx,0
    mov ecx,0
    mov edx, 0
   
      loops:
       cmp ebx,10
    jge exit
 NEWLINE
        add ebx,1
        mov ecx,0
    loopers:
     
   cmp ecx, ebx
   jae loops
    inc ecx
    
    PRINT_STRING "*"
   jmp loopers
   
 
    
    
    exit:
    
    mov eax,0
    mov ebx,0
    mov ecx,0
    mov edx,0
    
    mov ebx,10
    
    loopss:

       cmp ebx,0
    je exitt
 NEWLINE
        sub ebx,1
        mov ecx,0
    looperss:
     
   cmp ecx, ebx
   jae loopss
    inc ecx
    
    PRINT_STRING "*"
   jmp looperss
    
    exitt:
    xor eax, eax
    ret