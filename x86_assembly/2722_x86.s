main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -24[rbp], xmm0
	lea	rsi, -64[rbp]
	lea	rcx, -56[rbp]
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR -72[rbp]
	movsd	xmm1, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -72[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm2, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -48[rbp]
	addsd	xmm1, xmm2
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC4[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	movsd	xmm1, QWORD PTR -64[rbp]
	addsd	xmm1, xmm2
	divsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR .LC4[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm2, QWORD PTR -40[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm2, QWORD PTR -40[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -64[rbp]
	movsd	xmm3, QWORD PTR -48[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -64[rbp]
	movsd	xmm3, QWORD PTR -48[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -72[rbp], rax
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC5[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC6[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, QWORD PTR -16[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: