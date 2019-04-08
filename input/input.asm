section .data
	questionBuffer db "What is your name? : "
	questionLength equ $-questionBuffer

	answerBuffer db "Hello, "
	answerLength equ $-answerBuffer

section .bss
	nameBuffer resb 16
	nameLength equ $-nameBuffer

section .text
	global _start

_start:
	call _printQuestion
	call _getName
	call _printAnswer
	call _printName

	mov rax, 60
	mov rdi, 0
	syscall

_printQuestion:
	mov rax, 1
	mov rdi, 1
	mov rsi, questionBuffer
	mov rdx, questionLength
	syscall
	ret

_getName:
	mov rax, 0
	mov rdi, 0
	mov rsi, nameBuffer
	mov rdx, nameLength
	syscall
	ret

_printAnswer:
	mov rax, 1
	mov rdi, 1
	mov rsi, answerBuffer
	mov rdx, answerLength
	syscall
	ret

_printName:
	mov rax, 1
	mov rdi, 1
	mov rsi, nameBuffer
	mov rdx, nameLength
	syscall
	ret

