	.file	"0130-surrounded-regions.c"
	.intel_syntax noprefix
	.text
	.globl	dfsModifyBorder
	.type	dfsModifyBorder, @function
dfsModifyBorder:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], ecx
	mov	DWORD PTR -24[rbp], r8d
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 88
	je	.L7
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 84
	cmp	DWORD PTR -20[rbp], 0
	jle	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	lea	ecx, -1[rax]
	mov	edi, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
.L4:
	cmp	DWORD PTR -24[rbp], 0
	jle	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sub	rax, 1
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L5
	mov	eax, DWORD PTR -24[rbp]
	lea	edi, -1[rax]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
.L5:
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	lea	ecx, 1[rax]
	mov	edi, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
.L6:
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jge	.L1
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, 1
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L1
	mov	eax, DWORD PTR -24[rbp]
	lea	edi, 1[rax]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	esi, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	jmp	.L1
.L7:
	nop
.L1:
	leave
	ret
	.size	dfsModifyBorder, .-dfsModifyBorder
	.globl	reModifyBorder
	.type	reModifyBorder, @function
reModifyBorder:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
.L14:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
.L13:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 88
	jmp	.L12
.L11:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 84
	jne	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	mov	BYTE PTR [rax], 79
.L12:
	add	DWORD PTR -4[rbp], 1
.L10:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L13
	add	DWORD PTR -8[rbp], 1
.L9:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L14
	nop
	nop
	pop	rbp
	ret
	.size	reModifyBorder, .-reModifyBorder
	.globl	solve
	.type	solve, @function
solve:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -20[rbp], 1
	jmp	.L16
.L17:
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, 0
	mov	rdi, rax
	call	dfsModifyBorder
	mov	edi, DWORD PTR -4[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	add	DWORD PTR -20[rbp], 1
.L16:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L17
	mov	DWORD PTR -16[rbp], 0
	jmp	.L18
.L19:
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, ecx
	mov	ecx, 0
	mov	rdi, rax
	call	dfsModifyBorder
	mov	edi, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r8d, edi
	mov	rdi, rax
	call	dfsModifyBorder
	add	DWORD PTR -16[rbp], 1
.L18:
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L19
	mov	edx, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	reModifyBorder
	nop
	leave
	ret
	.size	solve, .-solve
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
