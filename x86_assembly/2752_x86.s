	.file	"2752.c"
	.intel_syntax noprefix
	.text
	.globl	P
	.bss
	.align 32
	.type	P, @object
	.size	P, 400010
P:
	.zero	400010
	.globl	Pi
	.align 32
	.type	Pi, @object
	.size	Pi, 1600040
Pi:
	.zero	1600040
	.globl	queue
	.align 32
	.type	queue, @object
	.size	queue, 1600040
queue:
	.zero	1600040
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d "
.LC1:
	.string	"%d\n"
.LC2:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
.L7:
	lea	rax, P[rip]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR m[rip]
	mov	esi, eax
	lea	rax, P[rip]
	mov	rdi, rax
	call	Compute_PREFIX
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR m[rip]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	add	ecx, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
.L3:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jns	.L4
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -8[rbp], 1
.L5:
	cmp	DWORD PTR -8[rbp], 0
	jns	.L6
	mov	eax, DWORD PTR m[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, P[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L7
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.globl	Compute_PREFIX
	.type	Compute_PREFIX, @function
Compute_PREFIX:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], -1
	mov	DWORD PTR Pi[rip], -1
	mov	DWORD PTR -8[rbp], 1
	jmp	.L10
.L13:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Pi[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
.L11:
	cmp	DWORD PTR -4[rbp], 0
	js	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L13
.L12:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L14
	add	DWORD PTR -4[rbp], 1
.L14:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Pi[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
.L10:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L11
	nop
	nop
	pop	rbp
	ret
	.size	Compute_PREFIX, .-Compute_PREFIX
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
