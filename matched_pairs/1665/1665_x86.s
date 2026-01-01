	.file	"1665.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%lf%d%lf"
.LC4:
	.string	"Trip #%d: %.2lf %.2lf\n"
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
	mov	DWORD PTR -44[rbp], 0
	lea	rcx, -32[rbp]
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L4:
	add	DWORD PTR -44[rbp], 1
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	mov	eax, DWORD PTR -48[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -32[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR -44[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	lea	rcx, -32[rbp]
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	mov	eax, DWORD PTR -48[rbp]
	test	eax, eax
	je	.L3
	movsd	xmm0, QWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L4
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L4
.L3:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	1518260631
	.long	1074340347
	.align 8
.LC2:
	.long	0
	.long	1089400832
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
