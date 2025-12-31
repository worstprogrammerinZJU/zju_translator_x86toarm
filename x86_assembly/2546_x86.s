	.file	"2546.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"0.000"
.LC2:
	.string	"%.3lf\n"
.LC4:
	.string	"%lf%lf%lf%lf%lf%lf"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L2
.L9:
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	comisd	xmm0, xmm1
	jbe	.L3
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	QWORD PTR -80[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	QWORD PTR -56[rbp], xmm0
.L3:
	movsd	xmm0, QWORD PTR -96[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -96[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -48[rbp], rax
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	comisd	xmm0, xmm1
	jb	.L15
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L2
.L15:
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm1, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR -48[rbp]
	jb	.L16
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	jmp	.L2
.L16:
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm0, xmm1
	movsd	xmm2, QWORD PTR -80[rbp]
	movsd	xmm1, QWORD PTR -80[rbp]
	mulsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -56[rbp]
	divsd	xmm0, xmm1
	divsd	xmm0, QWORD PTR -48[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	acos@PLT
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -80[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm0, xmm1
	movsd	xmm2, QWORD PTR -56[rbp]
	movsd	xmm1, QWORD PTR -56[rbp]
	mulsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -80[rbp]
	divsd	xmm0, xmm1
	divsd	xmm0, QWORD PTR -48[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	acos@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	addsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, xmm1
	movapd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -80[rbp]
	mulsd	xmm0, xmm1
	movapd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm0, xmm2
	mulsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	movapd	xmm2, xmm0
	addsd	xmm2, xmm0
	subsd	xmm1, xmm2
	movapd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L2:
	lea	r8, -64[rbp]
	lea	rdi, -72[rbp]
	lea	rcx, -80[rbp]
	lea	rdx, -88[rbp]
	lea	rax, -96[rbp]
	sub	rsp, 8
	lea	rsi, -56[rbp]
	push	rsi
	mov	r9, r8
	mov	r8, rdi
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 16
	cmp	eax, -1
	jne	.L9
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	1293080650
	.long	1074340347
	.align 8
.LC3:
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
