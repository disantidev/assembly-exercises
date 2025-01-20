.section .text

.globl _start

_start:
	movq $5, %rcx
	movq $2, %rbx
	movq $1, %rax

mainloop:
	addq $0, %rcx
	jz complete
	mulq %rbx
	decq %rcx
	jmp mainloop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall
