	.file	"3123.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	pie
	.align 32
	.type	pie, @object
	.size	pie, 80000
pie:
	.zero	80000
	.text
	.globl	piece
	.type	piece, @function
piece:
	endbr64
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -24[rbp], xmm0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	divsd	xmm0, QWORD PTR -24[rbp]
	cvttsd2si	eax, xmm0
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	piece, .-piece
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC3:
	.string	"%lf"
.LC7:
	.string	"%.4lf\n"
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
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -40[rbp], 0
	jmp	.L6
.L14:
	lea	rax, -44[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -44[rbp]
	add	eax, 1
	mov	DWORD PTR -44[rbp], eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L7
.L10:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	comisd	xmm0, QWORD PTR -32[rbp]
	jbe	.L8
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	movsd	QWORD PTR -32[rbp], xmm0
.L8:
	add	DWORD PTR -36[rbp], 1
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L10
	pxor	xmm0, xmm0
	movsd	QWORD PTR -24[rbp], xmm0
	jmp	.L11
.L13:
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC4[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	piece
	mov	edx, DWORD PTR -44[rbp]
	cmp	eax, edx
	jge	.L12
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	jmp	.L11
.L12:
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
.L11:
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR .LC5[rip]
	ja	.L13
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC6[rip]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -40[rbp], 1
.L6:
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -40[rbp], eax
	jl	.L14
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
.LC4:
	.long	0
	.long	1073741824
	.align 8
.LC5:
	.long	-500134854
	.long	1044740494
	.align 8
.LC6:
	.long	1413754602
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
