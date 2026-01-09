main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rdi, -52[rbp]
	lea	rsi, -48[rbp]
	lea	rcx, -44[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -36[rbp]
	mov	r9, rdi
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	eax, DWORD PTR -36[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR -48[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -40[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR -52[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	divsd	xmm0, QWORD PTR -8[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	atan@PLT
	movsd	xmm1, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movapd	xmm1, xmm0
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	edx, DWORD PTR -44[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, edx
	movq	xmm0, rax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	lea	rdi, -52[rbp]
	lea	rsi, -48[rbp]
	lea	rcx, -44[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -36[rbp]
	mov	r9, rdi
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -40[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -44[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -48[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -52[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: