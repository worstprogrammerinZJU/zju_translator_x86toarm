	.file	"2641.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d%d%d"
.LC3:
	.string	"%.2lf %.2lf\n"
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
	lea	rdi, -44[rbp]
	lea	rsi, -48[rbp]
	lea	rcx, -52[rbp]
	lea	rdx, -56[rbp]
	lea	rax, -60[rbp]
	mov	r9, rdi
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -60[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR -48[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	mov	eax, DWORD PTR -56[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR -44[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	divsd	xmm0, QWORD PTR -40[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	atan@PLT
	movsd	xmm1, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	movapd	xmm1, xmm0
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	edx, DWORD PTR -52[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, edx
	movq	xmm0, rax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	lea	rdi, -44[rbp]
	lea	rsi, -48[rbp]
	lea	rcx, -52[rbp]
	lea	rdx, -56[rbp]
	lea	rax, -60[rbp]
	mov	r9, rdi
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -60[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -56[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -52[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -48[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -44[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1080459264
	.align 8
.LC2:
	.long	1413732084
	.long	1074340347
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
