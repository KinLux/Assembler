section .text

global _add42

_add42:
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    add eax,  42
    mov  esp, ebp
    pop ebp
    ret

;$nasm  -f elf 32 add42.asm -o add42.o
