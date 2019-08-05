section .text

global _main
extern  printf

section .data
    msg db "Testing %i...", 0x0a, 0x00; 0x0a (new line), 0x00(String end for c)

_main:
    push ebp
    mov ebp, esp
    push 123
    push msg
    call printf
    mov eax, 0
    mov esp, ebp
    pop ebp
    ret
