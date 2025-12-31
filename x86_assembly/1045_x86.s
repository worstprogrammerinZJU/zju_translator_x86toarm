	.file	"1045.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%lf%lf%lf%d"
.LC1:
	.string	"%lf"
.LC3:
	.string	"%.3lf\n"
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
	lea	rsi, -56[rbp]
	lea	rcx, -32[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -48[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -52[rbp], 0
	jmp	.L2
.L3:
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm1, xmm0
	movsd	QWORD PTR -72[rbp], xmm1
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movapd	xmm2, xmm1
	addsd	xmm2, xmm0
	movq	rax, xmm2
	movq	xmm0, rax
	call	sqrt@PLT
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -52[rbp], 1
.L2:
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L3
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
.LC2:
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
