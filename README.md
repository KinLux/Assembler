# Assembler
Assembler Coding

**Required**

`sudo apt install nasm`


**Basics x86_32**

`$nasm -f elf32  lvl1.asm -o lvl1.o`

`$ld -m elf_i386 lvl1.o -o lvl1`

`$./lvl1`

**Basics x86_64**

`$nasm -f el642  lvl1.asm -o lvl1.o`

`$ld -m elf_i386 lvl1.o -o lvl1`

`$./lvl1`


**Operations**

| Data Movement Instructions |  |
| ------------- | ------------- |
| mov |   |
| push |   |
| pop |   |
| lea |   |

| Arithmetic and Logic Instructions |  |
| ------------- | ------------- |
| add |   |
| sub |   |
| inc, dec |   |
| imul |   |
| idiv |   |
|and, or, xor |   |
| not |   |
|neg||
|shl, shr||

|Control Flow Instructions||
| ------------- | ------------- |
|jmp||
|cmp||
|call, ret||

|jcondition||
| ------------- | ------------- |
|je <label> |(jump when equal)|
|jne <label>|(jump when not equal)|
|jz <label> |(jump when last result was zero)|
|jg <label> |(jump when greater than)|
|jge <label>|(jump when greater than or equal to)|
|jl <label> |(jump when less than)|
|jle <label>|(jump when less than or equal to)|

**section .data types**

DB - Define Byte. 8 bits

DW - Define Word. Generally 2 bytes on a typical x86 32-
bit system

DD - Define double word. Generally 4 bytes on a typical x86 32-bit system


**System Calls Table for x86**

[x86_32](https://syscalls.kernelgrok.com/)

[x86_64](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)

**Referenz for good tutorials**

[Assembler Tutorial - www.cs.virginia.edu](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)

![alt text](https://www.cs.virginia.edu/~evans/cs216/guides/x86-registers.png)

[https://asmtutor.com](https://asmtutor.com)
