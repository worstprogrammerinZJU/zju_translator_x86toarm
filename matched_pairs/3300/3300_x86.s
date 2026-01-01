	.file	"3300.c"
	.intel_syntax noprefix
	.text
	.globl	f
	.bss
	.align 4
	.type	f, @object
	.size	f, 4
f:
	.zero	4
	.globl	r
	.align 4
	.type	r, @object
	.size	r, 4
r:
	.zero	4
	.globl	q
	.align 4
	.type	q, @object
	.size	q, 4
q:
	.zero	4
	.globl	front
	.align 32
	.type	front, @object
	.size	front, 80
front:
	.zero	80
	.globl	rear
	.align 32
	.type	rear, @object
	.size	rear, 80
rear:
	.zero	80
	.globl	ratio
	.align 32
	.type	ratio, @object
	.size	ratio, 800
ratio:
	.zero	800
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L9
	mov	eax, -1
	jmp	.L4
.L9:
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L10
	mov	eax, 1
	jmp	.L4
.L10:
	mov	eax, 0
.L4:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%lf"
.LC3:
	.string	"%.2lf\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L12
.L25:
	lea	rax, r[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, front[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -16[rbp], 1
.L13:
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L14
	mov	DWORD PTR -16[rbp], 0
	jmp	.L15
.L16:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, rear[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -16[rbp], 1
.L15:
	mov	eax, DWORD PTR r[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L16
	mov	DWORD PTR q[rip], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L17
.L20:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, front[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, rear[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR q[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR q[rip], edx
	divsd	xmm0, xmm1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	add	DWORD PTR -12[rbp], 1
.L18:
	mov	eax, DWORD PTR r[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L19
	add	DWORD PTR -16[rbp], 1
.L17:
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR q[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rsi, rax
	lea	rax, ratio[rip]
	mov	rdi, rax
	call	qsort@PLT
	pxor	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -16[rbp], 1
	jmp	.L21
.L24:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	divsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L22
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
.L22:
	add	DWORD PTR -16[rbp], 1
.L21:
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L24
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
.L12:
	lea	rax, f[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR f[rip]
	test	eax, eax
	jne	.L25
	mov	eax, 0
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
