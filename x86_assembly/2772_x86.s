main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4064
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rcx, -28[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -4048[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, [rdx+rax]
	lea	rax, -4052[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -4052[rbp]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jle	.L4
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -4052[rbp], 1
	mov	eax, DWORD PTR -4052[rbp]
	cmp	eax, 1
	jne	.L5
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	cmp	DWORD PTR -20[rbp], eax
	jge	.L6
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	sub	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -4048[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	cdq
	idiv	esi
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	imul	eax, edx
	add	eax, eax
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L8
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	cmp	edx, eax
	jle	.L11
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	mov	DWORD PTR -4052[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -4048[rbp+rax*4], edx
	mov	edx, DWORD PTR -4052[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -4048[rbp+rax*4], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L12
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	add	DWORD PTR -16[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -20[rbp]
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: