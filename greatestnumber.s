.globl _start

.section .data
    count: 
        .quad 10
    values: 
        .quad 1, 2, 4, 7, 1, 3, 7, 8, 9, 5

.section .text

_start:
    mov count, %rcx
    mov $0, %rbx
    mov values(,%rbx,8), %rdi
    inc %rbx
    dec %rcx

mainloop:
    mov values(,%rbx,8), %rax
    cmp %rax, %rdi
    jge loopcontrol
    mov %rax, %rdi

loopcontrol:
    inc %rbx
    loop mainloop

exit:
    mov $60, %rax
    syscall
