	.file	"1003.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC1:
	.string	"%lf"
.LC3:
	.string	"%d card(s)\n"
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
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
.L5:
	mov	DWORD PTR -28[rbp], 2
	jmp	.L3
.L4:
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -28[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -28[rbp], 1
.L3:
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	ja	.L4
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 2
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
.L2:
	movsd	xmm0, QWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L5
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L5
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
