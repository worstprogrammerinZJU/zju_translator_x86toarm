	.file	"0118-pascals-triangle.c"
	.intel_syntax noprefix
	.text
	.globl	generate
	.type	generate, @function
generate:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -52[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR [rax], rdx
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L2
.L3:
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR -36[rbp]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	cdqe
	sal	rax, 2
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	add	DWORD PTR -36[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jl	.L3
	mov	DWORD PTR -32[rbp], 2
	jmp	.L4
.L7:
	mov	DWORD PTR -28[rbp], 1
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	sub	rax, 4
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rsi, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rsi
	mov	rsi, QWORD PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -28[rbp], 1
.L5:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L6
	add	DWORD PTR -32[rbp], 1
.L4:
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jl	.L7
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	generate, .-generate
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
