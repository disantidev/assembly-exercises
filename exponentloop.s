.section .text

.globl _start

_start:
	movq $3, %rcx
	movq $2, %rbx
	movq $1, %rax
	cmpq $0, %rcx
	je complete

mainloop:
	mulq %rbx
	loopq mainloop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall
