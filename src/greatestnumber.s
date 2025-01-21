.globl _start

.section .data
    count: 
        .quad 10
    values: 
        .quad 1, 2, 4, 7, 1, 3, 7, 8, 9, 5

.section .text

_start:
    movq count, %rcx
    movq $0, %rbx
    movq values(,%rbx,8), %rdi
    incq %rbx
    decq %rcx

mainloop:
    movq values(,%rbx,8), %rax
    cmpq %rax, %rdi
    jge loopcontrol
    movq %rax, %rdi

loopcontrol:
    incq %rbx
    loopq mainloop

exit:
    movq $60, %rax
    syscall
