section .text

global _start

_start:
    mov eax, 1   ; sys_exit
    mov ebx, 42  ; exit status 42
    mov ecx, 101
    cmp ecx, 100 ; check if ecx = 100 (false)
    jl skip      ; jump if less than
    mov ebx, 30  ; exit status 30

skip:
    int 0x80

;Command exited with non-zero status 30
