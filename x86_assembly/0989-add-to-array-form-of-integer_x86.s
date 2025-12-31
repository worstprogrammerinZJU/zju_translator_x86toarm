	.file	"0989-add-to-array-form-of-integer.c"
	.intel_syntax noprefix
	.text
	.globl	addToArrayForm
	.type	addToArrayForm, @function
addToArrayForm:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	DWORD PTR -64[rbp], edx
	mov	QWORD PTR -72[rbp], rcx
	mov	eax, DWORD PTR -60[rbp]
	mov	edx, 6
	cmp	eax, edx
	cmovl	eax, edx
	add	eax, 2
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -40[rbp], 0
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	mov	DWORD PTR -36[rbp], eax
	mov	DWORD PTR -32[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -28[rbp], eax
	cmp	DWORD PTR -36[rbp], 0
	js	.L3
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -28[rbp], eax
	sub	DWORD PTR -36[rbp], 1
.L3:
	cmp	DWORD PTR -64[rbp], 0
	jle	.L4
	mov	ecx, DWORD PTR -64[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	add	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -64[rbp], eax
.L4:
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	lea	rsi, [rdx+rax]
	mov	ecx, DWORD PTR -28[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	edi, ecx
	sar	edi, 31
	sub	eax, edi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR [rsi], edx
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -40[rbp], eax
	add	DWORD PTR -32[rbp], 1
.L2:
	cmp	DWORD PTR -36[rbp], 0
	jns	.L5
	cmp	DWORD PTR -64[rbp], 0
	jg	.L5
	cmp	DWORD PTR -40[rbp], 0
	jg	.L5
	mov	DWORD PTR -24[rbp], 0
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -8[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -24[rbp], 1
	sub	DWORD PTR -20[rbp], 1
.L6:
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L7
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	.size	addToArrayForm, .-addToArrayForm
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
