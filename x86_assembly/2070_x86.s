	.file	"2070.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%f%d%d"
.LC3:
	.string	"Wide Receiver"
.LC5:
	.string	"Lineman"
.LC7:
	.string	"Quarterback"
.LC8:
	.string	"No positions"
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
.L14:
	mov	DWORD PTR -12[rbp], 0
	lea	rcx, -16[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movss	xmm0, DWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	ucomiss	xmm0, xmm1
	jp	.L2
	pxor	xmm1, xmm1
	ucomiss	xmm0, xmm1
	je	.L20
.L2:
	movss	xmm1, DWORD PTR -24[rbp]
	movss	xmm0, DWORD PTR .LC2[rip]
	comiss	xmm0, xmm1
	jb	.L5
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 149
	jle	.L5
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 199
	jle	.L5
	mov	DWORD PTR -12[rbp], 1
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L5:
	movss	xmm1, DWORD PTR -24[rbp]
	movss	xmm0, DWORD PTR .LC4[rip]
	comiss	xmm0, xmm1
	jb	.L7
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 299
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 499
	jle	.L7
	cmp	DWORD PTR -12[rbp], 1
	jne	.L9
	mov	edi, 32
	call	putchar@PLT
.L9:
	mov	DWORD PTR -12[rbp], 1
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L7:
	movss	xmm1, DWORD PTR -24[rbp]
	movss	xmm0, DWORD PTR .LC6[rip]
	comiss	xmm0, xmm1
	jb	.L10
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 199
	jle	.L10
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 299
	jle	.L10
	cmp	DWORD PTR -12[rbp], 1
	jne	.L12
	mov	edi, 32
	call	putchar@PLT
.L12:
	mov	DWORD PTR -12[rbp], 1
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L10:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L13
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L13:
	mov	edi, 10
	call	putchar@PLT
	jmp	.L14
.L20:
	nop
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
	.align 4
.LC2:
	.long	1083179008
	.align 4
.LC4:
	.long	1086324736
	.align 4
.LC6:
	.long	1084227584
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
