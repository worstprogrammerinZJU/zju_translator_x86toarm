cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	je	.L2
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L3
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 8
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	leave
	ret
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -36[rbp], edx
	mov	QWORD PTR -48[rbp], rcx
	mov	DWORD PTR -40[rbp], r8d
	mov	DWORD PTR -52[rbp], r9d
	mov	eax, DWORD PTR -52[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jne	.L5
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -48[rbp]
	add	rdx, rcx
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR [rdx], rax
	mov	eax, 1
	jmp	.L6
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -48[rbp]
	add	rdx, rcx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	mov	eax, DWORD PTR -52[rbp]
	lea	r8d, 1[rax]
	mov	edi, DWORD PTR -4[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, r8d
	mov	r8d, edi
	mov	rdi, rax
	call	dfs
	test	eax, eax
	je	.L9
	mov	eax, 1
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L10
	mov	eax, 0
	leave
	ret
findItinerary:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -48[rbp], edx
	mov	QWORD PTR -56[rbp], rcx
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -44[rbp]
	add	eax, 1
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	esi, 4
	mov	edi, eax
	mov	eax, 0
	call	calloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	strcmp@PLT
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	edi, DWORD PTR -4[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR -44[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	r9d, 1
	mov	r8d, edi
	mov	rdi, rax
	call	dfs
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jne	.L14
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L15
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	free@PLT
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
0:
1:
2:
3:
4: