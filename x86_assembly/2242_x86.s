	.file	"2242.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC2:
	.string	"%.2lf\n"
.LC3:
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
.L3:
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm3, QWORD PTR -48[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm3, QWORD PTR -48[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -88[rbp], xmm0
	movsd	xmm0, QWORD PTR -88[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -88[rbp]
	subsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -88[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, QWORD PTR -24[rbp]
	divsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm2, QWORD PTR .LC0[rip]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L2:
	lea	r8, -56[rbp]
	lea	rdi, -64[rbp]
	lea	rcx, -72[rbp]
	lea	rdx, -80[rbp]
	lea	rax, -88[rbp]
	sub	rsp, 8
	lea	rsi, -48[rbp]
	push	rsi
	mov	r9, r8
	mov	r8, rdi
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 16
	cmp	eax, -1
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
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC1:
	.long	1413754136
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
