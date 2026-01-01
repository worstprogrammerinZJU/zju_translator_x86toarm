	.file	"3039.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	d
	.align 4
	.type	d, @object
	.size	d, 4
d:
	.zero	4
	.globl	r
	.align 4
	.type	r, @object
	.size	r, 4
r:
	.zero	4
	.globl	s
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.globl	t
	.align 4
	.type	t, @object
	.size	t, 4
t:
	.zero	4
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	min
	.align 8
	.type	min, @object
	.size	min, 8
min:
	.zero	8
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC4:
	.string	"%d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	rax, d[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR min[rip], xmm0
	mov	DWORD PTR i[rip], 1
	jmp	.L2
.L8:
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR n[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm0, xmm2
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	floor@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR r[rip], eax
	mov	edx, DWORD PTR r[rip]
	mov	eax, DWORD PTR d[rip]
	imul	edx, eax
	mov	ecx, DWORD PTR n[rip]
	mov	eax, DWORD PTR i[rip]
	imul	eax, ecx
	cmp	edx, eax
	jne	.L3
	mov	eax, DWORD PTR r[rip]
	add	eax, 1
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC3[rip]
	andpd	xmm0, xmm1
	mov	eax, DWORD PTR r[rip]
	sub	eax, 1
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	mov	eax, DWORD PTR n[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm3, xmm3
	cvtsi2sd	xmm3, eax
	divsd	xmm2, xmm3
	subsd	xmm1, xmm2
	movq	xmm2, QWORD PTR .LC3[rip]
	andpd	xmm1, xmm2
	comisd	xmm0, xmm1
	jbe	.L12
	mov	eax, DWORD PTR r[rip]
	add	eax, 1
	mov	DWORD PTR r[rip], eax
	jmp	.L3
.L12:
	mov	eax, DWORD PTR r[rip]
	sub	eax, 1
	mov	DWORD PTR r[rip], eax
.L3:
	mov	eax, DWORD PTR r[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC3[rip]
	andpd	xmm1, xmm0
	movsd	xmm0, QWORD PTR min[rip]
	comisd	xmm0, xmm1
	jbe	.L6
	mov	eax, DWORD PTR r[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC3[rip]
	andpd	xmm0, xmm1
	movsd	QWORD PTR min[rip], xmm0
	mov	eax, DWORD PTR r[rip]
	mov	DWORD PTR t[rip], eax
	mov	eax, DWORD PTR i[rip]
	mov	DWORD PTR s[rip], eax
.L6:
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
.L2:
	mov	eax, DWORD PTR i[rip]
	cmp	eax, 32767
	jle	.L8
	mov	edx, DWORD PTR s[rip]
	mov	eax, DWORD PTR t[rip]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1088421824
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 16
.LC3:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
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
