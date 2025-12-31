	.file	"2624.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%lf"
.LC2:
	.string	"%.3lf %.3lf\n"
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
.L14:
	mov	DWORD PTR -84[rbp], 1
	jmp	.L3
.L4:
	lea	rdx, -80[rbp]
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -84[rbp], 1
.L3:
	cmp	DWORD PTR -84[rbp], 7
	jle	.L4
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR -64[rbp]
	ucomisd	xmm0, xmm1
	jp	.L5
	ucomisd	xmm0, xmm1
	jne	.L5
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -56[rbp]
	ucomisd	xmm0, xmm1
	jp	.L5
	ucomisd	xmm0, xmm1
	jne	.L5
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -64[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L2
.L5:
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR -80[rbp]
	ucomisd	xmm0, xmm1
	jp	.L8
	ucomisd	xmm0, xmm1
	jne	.L8
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	ucomisd	xmm0, xmm1
	jp	.L8
	ucomisd	xmm0, xmm1
	jne	.L8
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -80[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -80[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -72[rbp], xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L2
.L8:
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR -80[rbp]
	ucomisd	xmm0, xmm1
	jp	.L11
	ucomisd	xmm0, xmm1
	jne	.L11
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	ucomisd	xmm0, xmm1
	jp	.L11
	ucomisd	xmm0, xmm1
	jne	.L11
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -80[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -80[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -72[rbp], xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L2
.L11:
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -64[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
.L2:
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L14
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
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
