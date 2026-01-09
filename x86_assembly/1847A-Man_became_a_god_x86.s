main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	lea	rdx, -72[rbp]
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, 1
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L4
	mov	DWORD PTR -24[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	lea	rcx, -4[rdx]
	mov	rdx, QWORD PTR -48[rbp]
	add	rdx, rcx
	mov	edx, DWORD PTR [rdx]
	sub	eax, edx
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	lea	rcx, -4[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	lea	rbx, [rcx+rdx]
	mov	edi, eax
	call	abs@PLT
	mov	DWORD PTR [rbx], eax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L6
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
	mov	DWORD PTR -32[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	add	rax, 1
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L9
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -32[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -56[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, DWORD PTR -28[rbp]
	sub	eax, 2
	cmp	DWORD PTR -32[rbp], eax
	jl	.L10
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, 2
	cmp	DWORD PTR -28[rbp], eax
	jl	.L11
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -36[rbp], eax
	add	DWORD PTR -40[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -72[rbp]
	sub	eax, edx
	cmp	DWORD PTR -40[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, DWORD PTR -64[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -64[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L14
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: