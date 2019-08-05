section .data
  msg db "Hello, world!", 0x0a
  len equ $ - msg

section .text
global _start
_start:
  mov eax, 4; sys_write
  mov ebx, 1; file descriptor
  mov ecx, msg; bytes to sys_write
  mov edx, len; number of bytes to sys_write
  int 0x80
  mov eax, 1; sys_exit
  mov ebx, 0; exit status 0
  int  0x80
