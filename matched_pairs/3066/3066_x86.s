	.file	"3066.c"
	.intel_syntax noprefix
	.text
	.globl	A
	.bss
	.align 8
	.type	A, @object
	.size	A, 8
A:
	.zero	8
	.globl	B
	.align 8
	.type	B, @object
	.size	B, 8
B:
	.zero	8
	.globl	re
	.align 8
	.type	re, @object
	.size	re, 8
re:
	.zero	8
	.globl	su
	.align 8
	.type	su, @object
	.size	su, 8
su:
	.zero	8
	.globl	lt
	.align 8
	.type	lt, @object
	.size	lt, 8
lt:
	.zero	8
	.globl	r
	.align 8
	.type	r, @object
	.size	r, 8
r:
	.zero	8
	.globl	s
	.align 8
	.type	s, @object
	.size	s, 8
s:
	.zero	8
	.section	.rodata
.LC1:
	.string	"%.0lf\n"
.LC2:
	.string	"%d%d%d%d"
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
.L5:
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, edx
	mov	edx, DWORD PTR -28[rbp]
	lea	edi, 1[rdx]
	cdq
	idiv	edi
	mov	DWORD PTR -16[rbp], eax
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sub	DWORD PTR -16[rbp], eax
	mov	esi, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	esi
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -20[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -20[rbp]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR A[rip], xmm0
	movsd	xmm0, QWORD PTR A[rip]
	movsd	QWORD PTR B[rip], xmm0
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR r[rip], xmm0
	movsd	xmm0, QWORD PTR r[rip]
	movsd	QWORD PTR re[rip], xmm0
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR su[rip], xmm0
	movsd	xmm0, QWORD PTR su[rip]
	movsd	QWORD PTR s[rip], xmm0
	mov	DWORD PTR -20[rbp], 1
	jmp	.L3
.L4:
	movsd	xmm1, QWORD PTR re[rip]
	movsd	xmm0, QWORD PTR r[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR re[rip], xmm0
	movsd	xmm1, QWORD PTR su[rip]
	movsd	xmm0, QWORD PTR s[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR su[rip], xmm0
	movsd	xmm1, QWORD PTR B[rip]
	movsd	xmm0, QWORD PTR A[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR B[rip], xmm0
	add	DWORD PTR -20[rbp], 1
.L3:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L4
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR re[rip]
	mulsd	xmm1, xmm0
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, DWORD PTR -12[rbp]
	movsd	xmm0, QWORD PTR su[rip]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR B[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR lt[rip], xmm0
	mov	rax, QWORD PTR lt[rip]
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L2:
	lea	rsi, -24[rbp]
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
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
