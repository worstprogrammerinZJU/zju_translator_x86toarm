main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	DWORD PTR -80[rbp], 1
	mov	DWORD PTR -76[rbp], 8
	mov	DWORD PTR -72[rbp], 27
	mov	DWORD PTR -68[rbp], 64
	mov	DWORD PTR -64[rbp], 125
	mov	DWORD PTR -60[rbp], 216
	mov	DWORD PTR -56[rbp], 343
	mov	DWORD PTR -52[rbp], 512
	mov	DWORD PTR -48[rbp], 729
	mov	DWORD PTR -44[rbp], 1000
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -80[rbp+rax*4]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L5
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -16[rbp], 10000
	jmp	.L6
	mov	eax, DWORD PTR -32[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	eax, DWORD PTR -32[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -20[rbp]
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -12[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	lea	ecx, [rax+rax]
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, DWORD PTR -20[rbp]
	add	eax, eax
	cdq
	idiv	DWORD PTR -12[rbp]
	add	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -16[rbp], eax
	sub	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 0
	jg	.L10
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jne	.L11
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: