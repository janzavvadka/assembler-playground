section .data
    question db "What is your name? "
	hello db "Hello "

section .bss
    answer resb 16

section .text
	global _start

_start:
    call _printQuestion
    call _getInputAnswer
    call _printHello
    call _printAnswer
	mov rax, 60
	mov rdi, 0
	syscall


_printQuestion:
    mov rax, 1
    mov rdi, 1
    mov rsi, question
    mov rdx, 19
    syscall
    ret

_getInputAnswer:
    mov rax, 0
    mov rdi, 0
    mov rsi, answer
    mov rdx, 16
    syscall
    ret

_printHello:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, 6
    syscall
    ret

_printAnswer:
    mov rax, 1
    mov rdi, 1
    mov rsi, answer
    mov rdx, 16
    syscall
    ret
