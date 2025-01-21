# Perform various arithmetics functions

.globl _start
.section .text
_start:
	movq $3, %rdi
	movq %rdi, %rax
	addq %rdi, %rax
	mulq %rdi
	movq $2, %rdi
	addq %rdi, %rax
	movq $4, %rdi
	mulq %rdi
	movq %rax, %rdi

	movq $60, %rax

	syscall
