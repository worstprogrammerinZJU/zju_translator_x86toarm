main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rcx, -16[rbp]
	lea	rdx, -24[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm2, QWORD PTR .LC1[rip]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jl	.L3
	movsd	xmm0, QWORD PTR -24[rbp]
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: