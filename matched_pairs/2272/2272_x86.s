	.file	"2272.c"
	.intel_syntax noprefix
	.text
	.globl	point
	.type	point, @function
point:
	endbr64
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L18
	mov	eax, 100
	jmp	.L4
.L18:
	movsd	xmm0, QWORD PTR .LC1[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L19
	mov	eax, 80
	jmp	.L4
.L19:
	movsd	xmm0, QWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L20
	mov	eax, 60
	jmp	.L4
.L20:
	movsd	xmm0, QWORD PTR .LC3[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L21
	mov	eax, 40
	jmp	.L4
.L21:
	movsd	xmm0, QWORD PTR .LC4[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L22
	mov	eax, 20
	jmp	.L4
.L22:
	mov	eax, 0
.L4:
	pop	rbp
	ret
	.size	point, .-point
	.section	.rodata
.LC5:
	.string	"%lf%lf"
.LC6:
	.string	"SCORE: %d to %d, "
.LC7:
	.string	"TIE."
.LC8:
	.string	"PLAYER 1 WINS."
.LC9:
	.string	"PLAYER 2 WINS."
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
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L24
.L32:
	mov	DWORD PTR -44[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	point
	add	DWORD PTR -44[rbp], eax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L25
.L26:
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	point
	add	DWORD PTR -44[rbp], eax
	add	DWORD PTR -36[rbp], 1
.L25:
	cmp	DWORD PTR -36[rbp], 1
	jle	.L26
	mov	DWORD PTR -36[rbp], 0
	jmp	.L27
.L28:
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	point
	add	DWORD PTR -40[rbp], eax
	add	DWORD PTR -36[rbp], 1
.L27:
	cmp	DWORD PTR -36[rbp], 2
	jle	.L28
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -44[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jne	.L29
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L30
.L29:
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jle	.L31
	lea	rax, .LC8[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L30
.L31:
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	puts@PLT
.L30:
	lea	rdx, -24[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L24:
	movsd	xmm0, QWORD PTR -32[rbp]
	ucomisd	xmm0, QWORD PTR .LC10[rip]
	jp	.L32
	ucomisd	xmm0, QWORD PTR .LC10[rip]
	jne	.L32
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1074266112
	.align 8
.LC1:
	.long	0
	.long	1075314688
	.align 8
.LC2:
	.long	0
	.long	1075970048
	.align 8
.LC3:
	.long	0
	.long	1076363264
	.align 8
.LC4:
	.long	0
	.long	1076756480
	.align 8
.LC10:
	.long	0
	.long	-1067909120
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
