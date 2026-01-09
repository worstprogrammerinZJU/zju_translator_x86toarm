main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR .LC0[rip]
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -24[rbp], xmm0
	mov	DWORD PTR -132[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movq	rax, xmm2
	movq	xmm0, rax
	call	log@PLT
	movsd	xmm1, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -24[rbp]
	ja	.L4
	mov	eax, DWORD PTR -132[rbp]
	mov	edx, DWORD PTR -4[rbp]
	sub	edx, 2
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
	movsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -132[rbp]
	add	eax, 1
	mov	DWORD PTR -132[rbp], eax
	mov	eax, DWORD PTR -132[rbp]
	cmp	eax, 21
	jle	.L3
	lea	rax, -132[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -132[rbp]
	sub	eax, 1960
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -132[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -132[rbp]
	test	eax, eax
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: