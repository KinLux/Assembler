section .text

global _start

_start:
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4 ; system_write
    mov ebx, 1 ; file_descriptor
    mov ecx, addr; bytes to write
    mov edx, 6; bytes lengh
    int 0x80
    mov eax, 1 ; sys_exit
    mov ebx, 0; exit status 0
    int 0x80

section .data
    addr db "yellow"
