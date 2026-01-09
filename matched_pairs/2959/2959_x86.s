main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rcx, -32[rbp]
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm2, QWORD PTR -24[rbp]
	subsd	xmm1, xmm2
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	asin@PLT
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
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