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
backtrack:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -56[rbp], r8
	mov	DWORD PTR -32[rbp], r9d
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L3
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	movsx	rdx, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L5
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L2
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	swap
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -32[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -56[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -32[rbp]
	lea	r8d, 1[rax]
	mov	rdi, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	esi, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, r8d
	mov	r8, rdi
	mov	rdi, rax
	call	backtrack
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	swap
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L8
	leave
	ret
permute:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jle	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], 0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdi, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	r9d, 0
	mov	r8, rdi
	mov	rdi, rax
	call	backtrack
	mov	DWORD PTR -12[rbp], 0
	jmp	.L12
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L13
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
0:
1:
2:
3:
4: