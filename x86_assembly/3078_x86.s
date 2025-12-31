	.file	"3078.c"
	.intel_syntax noprefix
	.text
	.globl	s
	.bss
	.align 32
	.type	s, @object
	.size	s, 3000
s:
	.zero	3000
	.globl	ans
	.align 32
	.type	ans, @object
	.size	ans, 3000
ans:
	.zero	3000
	.globl	pos
	.align 32
	.type	pos, @object
	.size	pos, 120
pos:
	.zero	120
	.globl	sign
	.align 32
	.type	sign, @object
	.size	sign, 120
sign:
	.zero	120
	.globl	q
	.align 32
	.type	q, @object
	.size	q, 120
q:
	.zero	120
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%s"
.LC3:
	.string	"%s "
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
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L2
.L17:
	mov	edx, 120
	mov	esi, 0
	lea	rax, pos[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 120
	mov	esi, 0
	lea	rax, sign[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, s[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L4
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
.L6:
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, pos[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sign[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -12[rbp], 1
.L5:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sign[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, q[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L8:
	add	DWORD PTR -12[rbp], 1
.L7:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pos[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, pos[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L11:
	add	DWORD PTR -12[rbp], 1
.L10:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L12
	mov	DWORD PTR -12[rbp], 1
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, s[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, pos[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	lea	rcx, ans[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	add	DWORD PTR -12[rbp], 1
.L13:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L14
	mov	DWORD PTR -12[rbp], 1
	jmp	.L15
.L16:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, ans[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
.L15:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L16
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -16[rbp], 1
.L2:
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L17
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
