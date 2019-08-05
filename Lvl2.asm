section .text

global _start

_start:
    mov eax, 1 ; sys_exit
    mov ebx, 42; exit status 42
    mov ecx, 99
    jmp skip   ;jump to "skip" label
    mov ebx, 30; exit status 30

skip:
    int 0x80


;Command exited with non-zero status 42
