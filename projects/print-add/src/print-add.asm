section .data
    digit db 3,10

section .text
    global _start

_start:
    add rax, 5
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
