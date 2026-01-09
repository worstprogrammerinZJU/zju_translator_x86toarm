main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rdx, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: