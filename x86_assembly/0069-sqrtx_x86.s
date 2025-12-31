	.file	"0069-sqrtx.c"
	.intel_syntax noprefix
	.text
	.globl	mySqrt
	.type	mySqrt, @function
mySqrt:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L2
.L6:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	cmp	rdx, rax
	jne	.L3
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L4
.L3:
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	cmp	rdx, rax
	jle	.L5
	mov	rax, QWORD PTR -8[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L2
.L5:
	mov	rax, QWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
.L2:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L6
	mov	eax, DWORD PTR -12[rbp]
.L4:
	pop	rbp
	ret
	.size	mySqrt, .-mySqrt
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
