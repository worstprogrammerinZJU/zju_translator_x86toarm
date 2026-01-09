main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	jmp	.L2
	pxor	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm1, QWORD PTR -64[rbp]
	comisd	xmm0, xmm1
	jbe	.L18
	movsd	xmm0, QWORD PTR -64[rbp]
	jmp	.L5
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L6
	movsd	xmm0, QWORD PTR -8[rbp]
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -64[rbp]
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -64[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	addsd	xmm1, QWORD PTR -40[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -72[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR -48[rbp]
	jbe	.L7
	movsd	xmm0, QWORD PTR -48[rbp]
	comisd	xmm0, QWORD PTR .LC3[rip]
	ja	.L9
	movsd	xmm0, QWORD PTR .LC3[rip]
	comisd	xmm0, QWORD PTR -48[rbp]
	jbe	.L19
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC4[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L6
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC4[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	subsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR .LC5[rip]
	ja	.L12
	movsd	xmm0, QWORD PTR -8[rbp]
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rcx, -72[rbp]
	lea	rdx, -64[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC7[rip]
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