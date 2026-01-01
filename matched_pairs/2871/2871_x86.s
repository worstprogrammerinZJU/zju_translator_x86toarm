	.file	"2871.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%lf%lf"
.LC1:
	.string	"%.2lf\n"
.LC2:
	.string	"%lf"
.LC6:
	.string	"End of Output"
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
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L3:
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR -24[rbp]
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L2:
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC3[rip]
	subsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR .LC4[rip]
	ja	.L3
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm2, QWORD PTR .LC3[rip]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, xmm1
	ja	.L3
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
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
.LC3:
	.long	0
	.long	1083127808
	.align 8
.LC4:
	.long	-1698910392
	.long	1048238066
	.align 8
.LC5:
	.long	-1698910392
	.long	-1099245582
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
