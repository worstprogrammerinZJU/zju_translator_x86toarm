	.file	"1969.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC3:
	.string	"TERM %d IS %d/%d\n"
.LC4:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L7:
	mov	eax, DWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movsd	xmm1, QWORD PTR .LC1[rip]
	movq	xmm0, rax
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -28[rbp], eax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -28[rbp]
	ucomisd	xmm0, QWORD PTR -16[rbp]
	jp	.L10
	ucomisd	xmm0, QWORD PTR -16[rbp]
	je	.L3
.L10:
	add	DWORD PTR -28[rbp], 1
.L3:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	imul	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	sub	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
.L6:
	mov	eax, DWORD PTR -32[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L7
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
	.long	0
	.long	1075838976
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1073741824
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
