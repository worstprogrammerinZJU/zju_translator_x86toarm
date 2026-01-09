main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	xmm2, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC0[rip]
	mulsd	xmm1, xmm2
	movsd	xmm2, QWORD PTR .LC1[rip]
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	test	eax, eax
	je	.L3
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L4
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L4
	movsd	xmm0, QWORD PTR -24[rbp]
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