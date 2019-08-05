section .text

global _start

_start:
    call func
    mov eax, 1;  sys_exit
    mov ebx, 0;  exit_status 0
    int 0x80


func:
    push ebp; save caling function stack frame(ebp)
    mov ebp, esp; make a new stack frame on top
    sub esp, 2; allocate 2 bytes of stack sapce
    mov [esp], byte 'H'
    mov [esp+1], byte 'i'
    mov eax, 4; sys_write
    mov ebx, 1; file descriptor
    mov ecx, esp; bytes to write
    mov edx, 2; number of bytes to write
    int 0x80
    mov  esp, ebp
    pop ebp
    ret
