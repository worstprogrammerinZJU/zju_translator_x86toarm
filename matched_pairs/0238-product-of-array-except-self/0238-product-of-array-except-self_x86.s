	.file	"0238-product-of-array-except-self.c"
	.intel_syntax noprefix
	.text
	.globl	productExceptSelf
	.type	productExceptSelf, @function
productExceptSelf:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -24[rbp]
	imul	eax, edx
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -20[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L3
	mov	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, rcx
	imul	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -16[rbp]
	imul	eax, edx
	mov	DWORD PTR -16[rbp], eax
	sub	DWORD PTR -12[rbp], 1
.L4:
	cmp	DWORD PTR -12[rbp], 0
	jns	.L5
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	.size	productExceptSelf, .-productExceptSelf
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
