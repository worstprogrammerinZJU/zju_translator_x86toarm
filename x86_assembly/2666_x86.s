	.file	"2666.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC4:
	.string	"%d\n"
.LC5:
	.string	"God help me!"
.LC6:
	.string	"%d%d%d"
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
	jmp	.L2
.L7:
	mov	eax, DWORD PTR -44[rbp]
	test	eax, eax
	je	.L12
	mov	eax, DWORD PTR -40[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	mov	eax, DWORD PTR -36[rbp]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movq	rax, xmm2
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	exp@PLT
	movq	rax, xmm0
	mov	edx, DWORD PTR -36[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, edx
	movq	xmm0, rax
	subsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	mov	eax, DWORD PTR -44[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR -24[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR -24[rbp]
	jb	.L11
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm1
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
.L11:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
.L2:
	lea	rcx, -36[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	test	eax, eax
	jne	.L7
	jmp	.L4
.L12:
	nop
.L4:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC1:
	.long	-394924785
	.long	1073460858
	.align 8
.LC2:
	.long	0
	.long	1086556160
	.align 8
.LC3:
	.long	0
	.long	1071644672
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
