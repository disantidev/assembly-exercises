.section .text

.globl _start

_start:
    leaq data, %rbx

    addq $DATA_SIZE, %rbx

    movq SECOND_INDEX(%rbx), %rdi

    movq $60, %rax
    syscall
