	.file	"0329-longest-increasing-path-in-a-matrix.c"
	.intel_syntax noprefix
	.text
	.globl	max
	.type	max, @function
max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	pop	rbp
	ret
	.size	max, .-max
	.globl	dfs
	.type	dfs, @function
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	DWORD PTR -40[rbp], ecx
	mov	DWORD PTR -44[rbp], r8d
	mov	DWORD PTR -48[rbp], r9d
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	jmp	.L5
.L4:
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR -44[rbp], 0
	jle	.L6
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L6
	mov	eax, DWORD PTR -44[rbp]
	lea	r8d, -1[rax]
	mov	edi, DWORD PTR -48[rbp]
	mov	ecx, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, edi
	mov	rdi, rax
	call	dfs
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -4[rbp], eax
.L6:
	cmp	DWORD PTR -48[rbp], 0
	jle	.L7
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	sub	rax, 4
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L7
	mov	eax, DWORD PTR -48[rbp]
	lea	r8d, -1[rax]
	mov	edi, DWORD PTR -44[rbp]
	mov	ecx, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	dfs
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -4[rbp], eax
.L7:
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	cmp	DWORD PTR -44[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L8
	mov	eax, DWORD PTR -44[rbp]
	lea	r8d, 1[rax]
	mov	edi, DWORD PTR -48[rbp]
	mov	ecx, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, edi
	mov	rdi, rax
	call	dfs
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -4[rbp], eax
.L8:
	mov	eax, DWORD PTR -40[rbp]
	sub	eax, 1
	cmp	DWORD PTR -48[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L9
	mov	eax, DWORD PTR -48[rbp]
	lea	r8d, 1[rax]
	mov	edi, DWORD PTR -44[rbp]
	mov	ecx, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	dfs
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -4[rbp], eax
.L9:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
.L5:
	leave
	ret
	.size	dfs, .-dfs
	.globl	longestIncreasingPath
	.type	longestIncreasingPath, @function
longestIncreasingPath:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -40[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	edx, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rbx, [rcx+rdx]
	mov	esi, 4
	mov	rdi, rax
	call	calloc@PLT
	mov	QWORD PTR [rbx], rax
	add	DWORD PTR -40[rbp], 1
.L11:
	mov	eax, DWORD PTR -40[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L12
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	jmp	.L13
.L16:
	mov	DWORD PTR -36[rbp], 0
	jmp	.L14
.L15:
	mov	r8d, DWORD PTR -36[rbp]
	mov	edi, DWORD PTR -40[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	dfs
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -32[rbp], eax
	add	DWORD PTR -36[rbp], 1
.L14:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L15
	add	DWORD PTR -40[rbp], 1
.L13:
	mov	eax, DWORD PTR -40[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L16
	mov	eax, DWORD PTR -32[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	longestIncreasingPath, .-longestIncreasingPath
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
