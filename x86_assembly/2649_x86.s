	.file	"2649.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d does not divide %d!\n"
.LC1:
	.string	"%d divides %d!\n"
.LC2:
	.string	"%d%d"
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
	jmp	.L2
.L13:
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L3
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
.L3:
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jg	.L4
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -28[rbp], 2
	jmp	.L5
.L10:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -28[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -24[rbp], 1
.L7:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -28[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	DWORD PTR -28[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L6
	mov	DWORD PTR -16[rbp], 1
	jmp	.L9
.L6:
	add	DWORD PTR -28[rbp], 1
.L5:
	cmp	DWORD PTR -20[rbp], 1
	jle	.L9
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L10
.L9:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L11
	mov	DWORD PTR -16[rbp], 1
.L11:
	cmp	DWORD PTR -16[rbp], 1
	jne	.L12
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
.L12:
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
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
