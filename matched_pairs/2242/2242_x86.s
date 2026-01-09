main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	jmp	.L2
	movsd	xmm0, QWORD PTR -72[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -72[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm3, QWORD PTR -80[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm3, QWORD PTR -80[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm2, QWORD PTR -56[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm3, QWORD PTR -64[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	addsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	subsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, QWORD PTR -24[rbp]
	divsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm2, QWORD PTR .LC0[rip]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	r8, -72[rbp]
	lea	rdi, -64[rbp]
	lea	rcx, -56[rbp]
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	sub	rsp, 8
	lea	rsi, -80[rbp]
	push	rsi
	mov	r9, r8
	mov	r8, rdi
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 16
	cmp	eax, -1
	jne	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: