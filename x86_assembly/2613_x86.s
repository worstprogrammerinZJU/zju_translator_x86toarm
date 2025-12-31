	.file	"2613.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC1:
	.string	"%.5lf\n"
.LC2:
	.string	"%d%d%d%d"
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
.L12:
	mov	eax, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -32[rbp]
	sub	eax, edx
	mov	DWORD PTR -32[rbp], eax
.L3:
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
.L4:
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -20[rbp], 1
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -20[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -20[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -20[rbp], 1
.L5:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jg	.L8
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L7
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -20[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -20[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -20[rbp], 1
.L8:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L9
	jmp	.L10
.L11:
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -20[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -20[rbp], 1
.L10:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L11
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L2:
	lea	rsi, -24[rbp]
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L12
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
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
