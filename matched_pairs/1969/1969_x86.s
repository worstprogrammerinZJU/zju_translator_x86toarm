main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movsd	xmm1, QWORD PTR .LC1[rip]
	movq	xmm0, rax
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -4[rbp], eax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -4[rbp]
	ucomisd	xmm0, QWORD PTR -24[rbp]
	jp	.L9
	ucomisd	xmm0, QWORD PTR -24[rbp]
	je	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: