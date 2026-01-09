main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	lea	rcx, -48[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -4[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm2, QWORD PTR -40[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm2, xmm0
	addsd	xmm2, xmm0
	subsd	xmm1, xmm2
	movapd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: