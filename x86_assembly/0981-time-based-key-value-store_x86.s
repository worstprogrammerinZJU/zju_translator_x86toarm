timeMapCreate:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edi, 32
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 24[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
timeMapSet:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	DWORD PTR -60[rbp], ecx
	cmp	QWORD PTR -40[rbp], 0
	je	.L13
	cmp	QWORD PTR -48[rbp], 0
	je	.L13
	cmp	QWORD PTR -56[rbp], 0
	je	.L13
	mov	DWORD PTR -20[rbp], -1
	mov	DWORD PTR -24[rbp], 0
	jmp	.L7
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L9
	add	DWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L10
	cmp	DWORD PTR -20[rbp], -1
	jne	.L11
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR 24[rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rdx], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rdx], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	lea	rbx, [rdx+rax]
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 1
	jmp	.L12
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 16[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L12
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 16[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	add	edx, edx
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR [rdx]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	sal	rdx, 3
	lea	rbx, [rsi+rdx]
	mov	rsi, rcx
	mov	rdi, rax
	call	realloc@PLT
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	strdup@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	strdup@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	DWORD PTR 16[rax], edx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	jmp	.L3
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
timeMapGet:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	DWORD PTR -52[rbp], edx
	cmp	QWORD PTR -40[rbp], 0
	je	.L15
	cmp	QWORD PTR -48[rbp], 0
	je	.L15
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	test	eax, eax
	jne	.L16
	lea	rax, .LC0[rip]
	jmp	.L17
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L19
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], -1
	jmp	.L20
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR 16[rax]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L21
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L20
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L22
	cmp	DWORD PTR -16[rbp], -1
	je	.L19
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR 8[rax]
	jmp	.L17
	add	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR 24[rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L23
	lea	rax, .LC0[rip]
	leave
	ret
timeMapFree:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	cmp	QWORD PTR -24[rbp], 0
	je	.L31
	mov	DWORD PTR -4[rbp], 0
	jmp	.L27
	mov	DWORD PTR -8[rbp], 0
	jmp	.L28
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rcx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	free@PLT
	add	DWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L29
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	add	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 24[rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	free@PLT
	jmp	.L24
	nop
	leave
	ret
0:
1:
2:
3:
4: