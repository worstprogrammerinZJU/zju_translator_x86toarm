	.file	"2661.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC3:
	.string	"%d"
.LC4:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -124[rbp], 1
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -104[rbp], xmm0
	movsd	xmm1, QWORD PTR -104[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -120[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -112[rbp], xmm0
	mov	DWORD PTR -128[rbp], 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -124[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -124[rbp], edx
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movq	rax, xmm2
	movq	xmm0, rax
	call	log@PLT
	movsd	xmm1, QWORD PTR -112[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -112[rbp], xmm0
.L3:
	movsd	xmm0, QWORD PTR -120[rbp]
	comisd	xmm0, QWORD PTR -112[rbp]
	ja	.L4
	mov	eax, DWORD PTR -128[rbp]
	mov	edx, DWORD PTR -124[rbp]
	sub	edx, 2
	cdqe
	mov	DWORD PTR -96[rbp+rax*4], edx
	movsd	xmm0, QWORD PTR -120[rbp]
	addsd	xmm0, xmm0
	movsd	QWORD PTR -120[rbp], xmm0
	mov	eax, DWORD PTR -128[rbp]
	add	eax, 1
	mov	DWORD PTR -128[rbp], eax
.L2:
	mov	eax, DWORD PTR -128[rbp]
	cmp	eax, 21
	jle	.L3
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -128[rbp]
	sub	eax, 1960
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	cdqe
	mov	eax, DWORD PTR -96[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L6:
	mov	eax, DWORD PTR -128[rbp]
	test	eax, eax
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
	.long	-17155601
	.long	1072049730
	.align 8
.LC1:
	.long	0
	.long	1074790400
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
