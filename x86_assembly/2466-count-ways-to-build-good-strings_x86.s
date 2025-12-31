	.file	"2466-count-ways-to-build-good-strings.c"
	.intel_syntax noprefix
	.text
	.globl	countGoodStrings
	.type	countGoodStrings, @function
countGoodStrings:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	DWORD PTR -48[rbp], ecx
	mov	DWORD PTR -12[rbp], 1000000007
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 1
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -16[rbp], 1
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L3
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	add	eax, edx
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -8[rbp]
	add	rcx, rdx
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	mov	DWORD PTR [rcx], eax
.L3:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jl	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	add	eax, edx
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -8[rbp]
	add	rcx, rdx
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	mov	DWORD PTR [rcx], eax
.L4:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], edx
.L5:
	add	DWORD PTR -16[rbp], 1
.L2:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jle	.L6
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, DWORD PTR -20[rbp]
	leave
	ret
	.size	countGoodStrings, .-countGoodStrings
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
