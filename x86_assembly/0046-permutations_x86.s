	.file	"0046-permutations.c"
	.intel_syntax noprefix
	.text
	.globl	swap
	.type	swap, @function
swap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	nop
	pop	rbp
	ret
	.size	swap, .-swap
	.globl	backtrack
	.type	backtrack, @function
backtrack:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -72[rbp], r8
	mov	DWORD PTR -48[rbp], r9d
	mov	eax, DWORD PTR -48[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jne	.L3
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	rdx, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR [rdx]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -56[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR -24[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -24[rbp], 1
.L4:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L5
	mov	rax, QWORD PTR -64[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	swap
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -72[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -48[rbp]
	lea	r8d, 1[rax]
	mov	rdi, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r9d, r8d
	mov	r8, rdi
	mov	rdi, rax
	call	backtrack
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	swap
	add	DWORD PTR -20[rbp], 1
.L7:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L8
.L2:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	backtrack, .-backtrack
	.globl	permute
	.type	permute, @function
permute:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	DWORD PTR -28[rbp], 1
	mov	DWORD PTR -24[rbp], 1
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -28[rbp], eax
	add	DWORD PTR -24[rbp], 1
.L10:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jle	.L11
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], 0
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdi, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r9d, 0
	mov	r8, rdi
	mov	rdi, rax
	call	backtrack
	mov	DWORD PTR -20[rbp], 0
	jmp	.L12
.L13:
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -20[rbp], 1
.L12:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L13
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
	.size	permute, .-permute
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
