	.file	"3385.c"
	.intel_syntax noprefix
	.text
	.globl	A
	.bss
	.align 4
	.type	A, @object
	.size	A, 4
A:
	.zero	4
	.globl	a
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.zero	4
	.globl	B
	.align 4
	.type	B, @object
	.size	B, 4
B:
	.zero	4
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.zero	4
	.globl	P
	.align 4
	.type	P, @object
	.size	P, 4
P:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d%d%d%d%d"
.LC1:
	.string	"Yes"
.LC2:
	.string	"No"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r9, P[rip]
	lea	r8, b[rip]
	lea	rax, B[rip]
	mov	rcx, rax
	lea	rax, a[rip]
	mov	rdx, rax
	lea	rax, A[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR A[rip]
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jg	.L2
	mov	edx, DWORD PTR B[rip]
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jg	.L2
	mov	edx, DWORD PTR A[rip]
	mov	eax, DWORD PTR B[rip]
	add	edx, eax
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jle	.L3
	mov	edx, DWORD PTR A[rip]
	mov	eax, DWORD PTR b[rip]
	cmp	edx, eax
	jle	.L3
	mov	edx, DWORD PTR B[rip]
	mov	eax, DWORD PTR a[rip]
	cmp	edx, eax
	jg	.L2
.L3:
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L4
.L2:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L4:
	mov	eax, 0
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
