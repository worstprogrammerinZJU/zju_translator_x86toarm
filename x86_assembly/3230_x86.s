	.file	"3230.c"
	.intel_syntax noprefix
	.text
	.globl	income
	.bss
	.align 32
	.type	income, @object
	.size	income, 40000
income:
	.zero	40000
	.globl	expense
	.align 32
	.type	expense, @object
	.size	expense, 40000
expense:
	.zero	40000
	.globl	dp
	.align 32
	.type	dp, @object
	.size	dp, 800
dp:
	.zero	800
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
.LC2:
	.string	"%d%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
.L26:
	mov	DWORD PTR -20[rbp], 0
	jmp	.L3
.L6:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, expense[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -16[rbp], 1
.L4:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L5
	add	DWORD PTR -20[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L6
	mov	DWORD PTR -20[rbp], 0
	jmp	.L7
.L10:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L8
.L9:
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, income[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -16[rbp], 1
.L8:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L9
	add	DWORD PTR -20[rbp], 1
.L7:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L10
	mov	DWORD PTR -20[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, income[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, expense[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -20[rbp], 1
.L11:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L12
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -20[rbp], 1
	jmp	.L13
.L19:
	mov	DWORD PTR -16[rbp], 0
	jmp	.L14
.L18:
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L15
.L17:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, income[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, expense[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jge	.L16
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, income[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	lea	rdx, 0[0+rax*4]
	lea	rax, expense[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
.L16:
	add	DWORD PTR -12[rbp], 1
.L15:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L17
	mov	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rdx, dp[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -16[rbp], 1
.L14:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L18
	mov	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -20[rbp], 1
.L13:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L19
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L20
.L22:
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L21
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
.L21:
	add	DWORD PTR -20[rbp], 1
.L20:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L2:
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L23
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	je	.L24
.L23:
	mov	eax, 1
	jmp	.L25
.L24:
	mov	eax, 0
.L25:
	test	eax, eax
	jne	.L26
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
