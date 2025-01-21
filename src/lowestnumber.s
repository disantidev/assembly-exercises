.globl _start

.section .data
    count:
        .quad 10
    values:
        .quad 4, 2, 3, 4, 1, 6, 7, 0, 9, 1

.section .text

_start:
    movq count, %rcx
    movq $0, %rbx
    movq values(,%rbx,8), %rdi
    incq %rbx
    decq %rcx

mainloop:
    movq values(,%rbx,8), %rax
    cmpq %rdi, %rax
    jge loopcontrol
    movq %rax, %rdi

loopcontrol:
    incq %rbx
    loopq mainloop

exit:
    movq $60, %rax
    syscall
