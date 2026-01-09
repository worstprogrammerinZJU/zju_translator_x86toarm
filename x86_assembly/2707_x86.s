main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rsi, -40[rbp]
	lea	rcx, -36[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -40[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -24[rbp]
	jbe	.L5
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 100
	jle	.L7
	mov	DWORD PTR -4[rbp], 100
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -40[rbp]
	lea	rcx, -36[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -40[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: