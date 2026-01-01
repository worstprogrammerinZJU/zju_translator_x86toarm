	.file	"2507.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC6:
	.string	"%.3lf\n"
.LC7:
	.string	"%lf%lf%lf"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L13:
	pxor	xmm0, xmm0
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	comisd	xmm0, xmm1
	jbe	.L19
	movsd	xmm0, QWORD PTR -72[rbp]
	jmp	.L5
.L19:
	movsd	xmm0, QWORD PTR -80[rbp]
.L5:
	movsd	QWORD PTR -48[rbp], xmm0
	jmp	.L6
.L12:
	movsd	xmm0, QWORD PTR -56[rbp]
	addsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -80[rbp]
	subsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -72[rbp]
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -72[rbp]
	subsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	addsd	xmm1, QWORD PTR -24[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -64[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L7
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR .LC3[rip]
	ja	.L9
.L7:
	movsd	xmm0, QWORD PTR .LC3[rip]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L20
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR .LC4[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	jmp	.L6
.L20:
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC4[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
.L6:
	movsd	xmm0, QWORD PTR -48[rbp]
	subsd	xmm0, QWORD PTR -56[rbp]
	comisd	xmm0, QWORD PTR .LC5[rip]
	ja	.L12
.L9:
	movsd	xmm0, QWORD PTR -56[rbp]
	addsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L2:
	lea	rcx, -64[rbp]
	lea	rdx, -72[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 8
.LC2:
	.long	-350469331
	.long	1058682594
	.align 8
.LC3:
	.long	-350469331
	.long	-1088801054
	.align 8
.LC4:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC5:
	.long	-1998362383
	.long	1055193269
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
