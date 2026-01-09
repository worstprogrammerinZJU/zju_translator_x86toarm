main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rsi, -20[rbp]
	lea	rcx, -48[rbp]
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	QWORD PTR -72[rbp], xmm1
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movapd	xmm2, xmm1
	addsd	xmm2, xmm0
	movq	rax, xmm2
	movq	xmm0, rax
	call	sqrt@PLT
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: