	.file	"2405.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC3:
	.string	"%.3lf\n"
.LC4:
	.string	"%lf%lf"
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
.L4:
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm2, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC0[rip]
	mulsd	xmm1, xmm2
	movsd	xmm2, QWORD PTR .LC1[rip]
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L2:
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	test	eax, eax
	je	.L3
	movsd	xmm0, QWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L4
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L4
	movsd	xmm0, QWORD PTR -24[rbp]
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
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1075314688
	.align 8
.LC1:
	.long	1413551940
	.long	1074340347
	.align 8
.LC2:
	.long	1431655765
	.long	1070945621
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
