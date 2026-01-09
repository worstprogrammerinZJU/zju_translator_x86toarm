main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	jmp	.L2
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	comisd	xmm0, xmm1
	jbe	.L3
	movsd	xmm0, QWORD PTR -64[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -88[rbp]
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -88[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm2, QWORD PTR -72[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm3, QWORD PTR -80[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm3
	movsd	xmm0, QWORD PTR -56[rbp]
	movsd	xmm3, QWORD PTR -80[rbp]
	subsd	xmm0, xmm3
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, xmm1
	jb	.L14
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	movsd	xmm0, QWORD PTR -64[rbp]
	movsd	xmm1, QWORD PTR -88[rbp]
	subsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L15
	movsd	xmm1, QWORD PTR -88[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -88[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	jmp	.L2
	movsd	xmm1, QWORD PTR -88[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm0, xmm1
	movsd	xmm2, QWORD PTR -64[rbp]
	movsd	xmm1, QWORD PTR -64[rbp]
	mulsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -88[rbp]
	divsd	xmm0, xmm1
	divsd	xmm0, QWORD PTR -8[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	acos@PLT
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -64[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm0, xmm1
	movsd	xmm2, QWORD PTR -88[rbp]
	movsd	xmm1, QWORD PTR -88[rbp]
	mulsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -64[rbp]
	divsd	xmm0, xmm1
	divsd	xmm0, QWORD PTR -8[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	acos@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	addsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, xmm1
	movapd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm2, QWORD PTR -88[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, xmm2
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -64[rbp]
	mulsd	xmm0, xmm1
	movapd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm2, QWORD PTR -88[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	mulsd	xmm0, xmm2
	mulsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	movapd	xmm2, xmm0
	addsd	xmm2, xmm0
	subsd	xmm1, xmm2
	movapd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	mov	rax, QWORD PTR -40[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	r8, -80[rbp]
	lea	rdi, -72[rbp]
	lea	rcx, -64[rbp]
	lea	rdx, -56[rbp]
	lea	rax, -48[rbp]
	sub	rsp, 8
	lea	rsi, -88[rbp]
	push	rsi
	mov	r9, r8
	mov	r8, rdi
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 16
	cmp	eax, -1
	jne	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: