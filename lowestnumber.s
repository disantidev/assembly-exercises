.globl _start

.section .data
    count:
        .quad 10
    values:
        .quad 4, 2, 3, 4, 1, 6, 7, 0, 9, 1

.section .text

_start:
    mov count, %rcx
    mov $0, %rbx
    mov values(,%rbx,8), %rdi
    inc %rbx
    dec %rcx

mainloop:
    mov values(,%rbx,8), %rax
    cmp %rdi, %rax
    jge loopcontrol
    mov %rax, %rdi

loopcontrol:
    inc %rbx
    loop mainloop

exit:
    mov $60, %rax
    syscall
