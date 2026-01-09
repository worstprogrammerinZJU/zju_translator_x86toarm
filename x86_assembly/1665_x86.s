main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -4[rbp], 0
	lea	rcx, -48[rbp]
	lea	rdx, -28[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	add	DWORD PTR -4[rbp], 1
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	mov	eax, DWORD PTR -28[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC3[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -48[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	lea	rcx, -48[rbp]
	lea	rdx, -28[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L3
	movsd	xmm0, QWORD PTR -48[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L4
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L4
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: