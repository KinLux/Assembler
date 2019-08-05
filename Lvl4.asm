section .text

global _start

_start:
    mov ebx, 1
    mov ecx, 4

label:
    add ebx, ebx; 1+=1, 2+=2,  4+=4, 8+=8
    dec ecx
    cmp ecx, 0
    jg label

    mov eax, 1
    int  0x80
;basic loop
