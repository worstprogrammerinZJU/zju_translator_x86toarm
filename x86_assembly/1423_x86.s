e:
pi:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 3
	jg	.L3
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L4
	movsd	xmm0, QWORD PTR .LC2[rip]
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	call	log10@PLT
	movsd	QWORD PTR -40[rbp], xmm0
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm3, xmm3
	cvtsi2sd	xmm3, eax
	movsd	QWORD PTR -48[rbp], xmm3
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC3[rip]
	movapd	xmm2, xmm0
	divsd	xmm2, xmm1
	movq	rax, xmm2
	movq	xmm0, rax
	call	log10@PLT
	mulsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR -40[rbp]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: