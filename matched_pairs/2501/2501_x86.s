main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	pxor	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L2
	call	getchar@PLT
	mov	BYTE PTR -17[rbp], al
	movzx	eax, BYTE PTR -49[rbp]
	movsx	eax, al
	sub	eax, 48
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	movzx	eax, BYTE PTR -48[rbp]
	movsx	eax, al
	sub	eax, 48
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm1, xmm0
	movzx	eax, BYTE PTR -46[rbp]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	movzx	eax, BYTE PTR -45[rbp]
	movsx	eax, al
	sub	eax, 48
	add	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm2, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movzx	eax, BYTE PTR -43[rbp]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	movzx	eax, BYTE PTR -42[rbp]
	movsx	eax, al
	sub	eax, 48
	add	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm2, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm2
	addsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -8[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	cmp	BYTE PTR -17[rbp], 10
	jne	.L3
	mov	rdx, QWORD PTR -8[rbp]
	lea	rax, -49[rbp]
	movq	xmm0, rdx
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	jmp	.L2
	cmp	BYTE PTR -17[rbp], 32
	jne	.L2
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -49[rbp]
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L4
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: