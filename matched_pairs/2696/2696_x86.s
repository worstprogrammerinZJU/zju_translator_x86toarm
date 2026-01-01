	.file	"2696.c"
	.intel_syntax noprefix
	.text
	.globl	a
	.bss
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.zero	4
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.zero	4
	.globl	c
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.zero	4
	.globl	d
	.align 4
	.type	d, @object
	.size	d, 4
d:
	.zero	4
	.globl	e
	.align 4
	.type	e, @object
	.size	e, 4
e:
	.zero	4
	.globl	f
	.align 4
	.type	f, @object
	.size	f, 4
f:
	.zero	4
	.globl	g
	.align 4
	.type	g, @object
	.size	g, 4
g:
	.zero	4
	.globl	h
	.align 4
	.type	h, @object
	.size	h, 4
h:
	.zero	4
	.globl	I
	.align 4
	.type	I, @object
	.size	I, 4
I:
	.zero	4
	.globl	fun
	.align 32
	.type	fun, @object
	.size	fun, 4004
fun:
	.zero	4004
	.text
	.globl	mod
	.type	mod, @function
mod:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], edx
	cmp	DWORD PTR -4[rbp], 0
	jns	.L2
	mov	eax, DWORD PTR -24[rbp]
	add	DWORD PTR -4[rbp], eax
.L2:
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	mod, .-mod
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d%d%d%d%d%d%d%d"
.LC2:
	.string	"%d\n"
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
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
.L10:
	lea	rax, I[rip]
	push	rax
	lea	rax, h[rip]
	push	rax
	lea	rax, g[rip]
	push	rax
	lea	rax, f[rip]
	push	rax
	lea	r9, e[rip]
	lea	r8, d[rip]
	lea	rax, c[rip]
	mov	rcx, rax
	lea	rax, b[rip]
	mov	rdx, rax
	lea	rax, a[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 32
	mov	eax, DWORD PTR a[rip]
	mov	DWORD PTR fun[rip], eax
	mov	eax, DWORD PTR b[rip]
	mov	DWORD PTR fun[rip+4], eax
	mov	eax, DWORD PTR c[rip]
	mov	DWORD PTR fun[rip+8], eax
	mov	DWORD PTR -12[rbp], 3
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -12[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR g[rip]
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 1
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR d[rip]
	mov	esi, ecx
	imul	esi, edx
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 2
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR e[rip]
	imul	edx, ecx
	add	esi, edx
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 3
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR f[rip]
	imul	ecx, edx
	sub	esi, ecx
	mov	edx, esi
	mov	esi, eax
	mov	edi, edx
	call	mod
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L8
.L7:
	mov	eax, DWORD PTR h[rip]
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 1
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR f[rip]
	imul	edx, ecx
	mov	ecx, DWORD PTR -12[rbp]
	sub	ecx, 2
	movsx	rcx, ecx
	lea	rsi, 0[0+rcx*4]
	lea	rcx, fun[rip]
	mov	esi, DWORD PTR [rsi+rcx]
	mov	ecx, DWORD PTR d[rip]
	imul	ecx, esi
	mov	esi, edx
	sub	esi, ecx
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 3
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR e[rip]
	imul	edx, ecx
	add	edx, esi
	mov	esi, eax
	mov	edi, edx
	call	mod
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, fun[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L8:
	add	DWORD PTR -12[rbp], 1
.L6:
	mov	eax, DWORD PTR I[rip]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	mov	eax, DWORD PTR I[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, fun[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
.L5:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L10
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
