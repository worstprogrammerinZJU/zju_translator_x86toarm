main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	jmp	.L2
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	DWORD PTR -80[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	DWORD PTR -8[rbp], 1
	jmp	.L5
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 3
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR -80[rbp+rax*4], edx
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	sub	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
	add	DWORD PTR -12[rbp], 2
	cmp	DWORD PTR -24[rbp], 1
	jg	.L9
	cmp	DWORD PTR -8[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	mov	edx, DWORD PTR -32[rbp]
	cdqe
	mov	DWORD PTR -80[rbp+rax*4], edx
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 1
	je	.L10
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	imul	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	sub	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L12
	add	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	ecx, DWORD PTR -80[rbp+rax*4]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L24
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L16
	jmp	.L15
	nop
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L25
	add	DWORD PTR -20[rbp], 1
	jmp	.L19
	nop
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L20
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -36[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L21
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: