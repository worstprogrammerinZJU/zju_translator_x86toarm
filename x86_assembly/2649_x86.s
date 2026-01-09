main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L3
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jg	.L4
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], 2
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L6
	mov	DWORD PTR -16[rbp], 1
	jmp	.L9
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -12[rbp], 1
	jle	.L9
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L10
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L11
	mov	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 1
	jne	.L12
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -28[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: