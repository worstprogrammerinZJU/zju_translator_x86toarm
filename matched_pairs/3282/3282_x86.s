	.file	"3282.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 100
str:
	.zero	100
	.globl	left
	.align 32
	.type	left, @object
	.size	left, 400000
left:
	.zero	400000
	.globl	right
	.align 32
	.type	right, @object
	.size	right, 400000
right:
	.zero	400000
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	l
	.align 4
	.type	l, @object
	.size	l, 4
l:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d %s"
.LC3:
	.string	"left"
.LC4:
	.string	"%d\n"
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
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -40[rbp], 0
	jmp	.L2
.L19:
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, l[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR l[rip]
	imul	eax, eax, 100
	mov	DWORD PTR l[rip], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L3
.L6:
	lea	rax, -44[rbp]
	lea	rdx, str[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, str[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	edx, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	DWORD PTR [rcx+rax], edx
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	mov	edx, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	DWORD PTR [rcx+rax], edx
.L5:
	add	DWORD PTR -36[rbp], 1
.L3:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L6
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L7
.L10:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -32[rbp]
	add	edx, eax
	mov	eax, DWORD PTR l[rip]
	cmp	edx, eax
	jle	.L8
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -32[rbp], eax
	jmp	.L9
.L8:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, left[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -32[rbp], eax
.L9:
	add	DWORD PTR -36[rbp], 1
.L7:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L10
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L11
.L14:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -32[rbp]
	add	edx, eax
	mov	eax, DWORD PTR l[rip]
	cmp	edx, eax
	jle	.L12
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -32[rbp], eax
	jmp	.L13
.L12:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, right[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -32[rbp], eax
.L13:
	add	DWORD PTR -36[rbp], 1
.L11:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L14
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	je	.L15
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jne	.L16
.L15:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -28[rbp], eax
	jmp	.L17
.L16:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L18
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -28[rbp], eax
	jmp	.L17
.L18:
	mov	eax, DWORD PTR -24[rbp]
	add	eax, eax
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
.L17:
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -40[rbp], 1
.L2:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -40[rbp], eax
	jl	.L19
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
