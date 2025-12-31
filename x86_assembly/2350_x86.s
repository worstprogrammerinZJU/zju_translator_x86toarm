	.file	"2350.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC2:
	.string	"%.3lf%c\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1040
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -1032[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -1024[rbp], 0
	jmp	.L2
.L8:
	lea	rax, -1028[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -1016[rbp], 0
	mov	DWORD PTR -1020[rbp], 0
	jmp	.L3
.L4:
	lea	rdx, -1008[rbp]
	mov	eax, DWORD PTR -1020[rbp]
	cdqe
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -1020[rbp]
	cdqe
	movzx	eax, BYTE PTR -1008[rbp+rax]
	movsx	eax, al
	add	DWORD PTR -1016[rbp], eax
	add	DWORD PTR -1020[rbp], 1
.L3:
	mov	eax, DWORD PTR -1028[rbp]
	cmp	DWORD PTR -1020[rbp], eax
	jl	.L4
	mov	ecx, DWORD PTR -1028[rbp]
	mov	eax, DWORD PTR -1016[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -1016[rbp], eax
	mov	DWORD PTR -1012[rbp], 0
	mov	DWORD PTR -1020[rbp], 0
	jmp	.L5
.L7:
	mov	eax, DWORD PTR -1020[rbp]
	cdqe
	movzx	eax, BYTE PTR -1008[rbp+rax]
	movsx	eax, al
	cmp	DWORD PTR -1016[rbp], eax
	jge	.L6
	add	DWORD PTR -1012[rbp], 1
.L6:
	add	DWORD PTR -1020[rbp], 1
.L5:
	mov	eax, DWORD PTR -1028[rbp]
	cmp	DWORD PTR -1020[rbp], eax
	jl	.L7
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -1012[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -1028[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movq	rax, xmm0
	mov	esi, 37
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -1024[rbp], 1
.L2:
	mov	eax, DWORD PTR -1032[rbp]
	cmp	DWORD PTR -1024[rbp], eax
	jl	.L8
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1079574528
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
