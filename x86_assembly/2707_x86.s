	.file	"2707.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d%d"
.LC2:
	.string	"%d%%\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rsi, -32[rbp]
	lea	rcx, -36[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -44[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L8:
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -44[rbp], eax
.L3:
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -36[rbp], eax
.L4:
	mov	eax, DWORD PTR -36[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -44[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	mov	eax, DWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -40[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L5
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
.L5:
	movsd	xmm0, QWORD PTR -24[rbp]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -28[rbp], eax
	cmp	DWORD PTR -28[rbp], 100
	jle	.L7
	mov	DWORD PTR -28[rbp], 100
.L7:
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -32[rbp]
	lea	rcx, -36[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -44[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -44[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -40[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1079574528
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
