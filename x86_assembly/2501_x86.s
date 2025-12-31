	.file	"2501.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC4:
	.string	"%s %.2lf km\n"
.LC5:
	.string	"%lf"
.LC6:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -48[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -56[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -40[rbp], xmm0
	jmp	.L2
.L4:
	call	getchar@PLT
	mov	BYTE PTR -57[rbp], al
	movzx	eax, BYTE PTR -17[rbp]
	movsx	eax, al
	sub	eax, 48
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	movzx	eax, BYTE PTR -16[rbp]
	movsx	eax, al
	sub	eax, 48
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm1, xmm0
	movzx	eax, BYTE PTR -14[rbp]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	movzx	eax, BYTE PTR -13[rbp]
	movsx	eax, al
	sub	eax, 48
	add	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm2, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movzx	eax, BYTE PTR -11[rbp]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	movzx	eax, BYTE PTR -10[rbp]
	movsx	eax, al
	sub	eax, 48
	add	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm2, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm2
	addsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -40[rbp], xmm0
	cmp	BYTE PTR -57[rbp], 10
	jne	.L3
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -17[rbp]
	movq	xmm0, rdx
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	jmp	.L2
.L3:
	cmp	BYTE PTR -57[rbp], 32
	jne	.L2
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	lea	rax, -17[rbp]
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L4
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1076101120
	.align 8
.LC2:
	.long	0
	.long	1078853632
	.align 8
.LC3:
	.long	0
	.long	1085022208
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
