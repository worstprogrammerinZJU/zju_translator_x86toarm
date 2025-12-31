	.file	"1822-sign-of-the-product-of-an-array.c"
	.intel_syntax noprefix
	.text
	.globl	arraySign
	.type	arraySign, @function
arraySign:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	BYTE PTR -5[rbp], 1
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	movsx	eax, BYTE PTR -5[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	neg	eax
	shr	eax, 31
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rsi
	mov	eax, DWORD PTR [rax]
	sar	eax, 31
	add	eax, edx
	mov	edx, eax
	mov	eax, ecx
	imul	eax, edx
	mov	BYTE PTR -5[rbp], al
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L3
	movsx	eax, BYTE PTR -5[rbp]
	pop	rbp
	ret
	.size	arraySign, .-arraySign
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
