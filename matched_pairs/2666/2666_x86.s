main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L11
	mov	eax, DWORD PTR -32[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -36[rbp]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movq	rax, xmm2
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	movsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	exp@PLT
	movq	rax, xmm0
	mov	edx, DWORD PTR -36[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, edx
	movq	xmm0, rax
	subsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR -16[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR -16[rbp]
	jb	.L10
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm1
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rcx, -36[rbp]
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	test	eax, eax
	jne	.L7
	jmp	.L4
	nop
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: