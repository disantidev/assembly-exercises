.globl _start

.section .data
    numbers_count:
        .quad 5
    numbers:
        .quad 1, 2, 3, 4, 5

.section .text

_start:
    movq numbers_count, %rcx
    movq $numbers, %rbx
    movq $0, %rdi

    cmpq $0, %rcx
    je endloop

mainloop:
    addq (%rbx), %rax
    addq $8, %rbx
    loopq mainloop

endloop:
    movq %rax, %rdi
    movq $60, %rax
    syscall
