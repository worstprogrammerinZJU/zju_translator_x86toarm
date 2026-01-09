main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 2
	jmp	.L3
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	ja	.L4
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 2
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L5
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: