main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -24[rbp], xmm0
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rdx, -32[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	sin@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm2, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC4[rip]
	addsd	xmm1, xmm2
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rdx, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L3
	nop
	leave
	ret
0:
1:
2:
3:
4: