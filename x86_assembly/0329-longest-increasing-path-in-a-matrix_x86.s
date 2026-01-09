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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, 4
	mov	edi, eax
	mov	eax, 0
	call	calloc@PLT
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	QWORD PTR [rax], rdx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L12
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	DWORD PTR -8[rbp], 0
	jmp	.L14
	mov	r8d, DWORD PTR -8[rbp]
	mov	edi, DWORD PTR -4[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	dfs
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L15
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L16
	mov	eax, DWORD PTR -12[rbp]
	leave
	ret
0:
1:
2:
3:
4: