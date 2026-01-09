main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -32[rbp]
	sub	eax, edx
	mov	DWORD PTR -32[rbp], eax
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jg	.L8
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L9
	jmp	.L10
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L11
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rsi, -32[rbp]
	lea	rcx, -28[rbp]
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: