n:
pie:
piece:
	endbr64
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -24[rbp], xmm0
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	divsd	xmm0, QWORD PTR -24[rbp]
	cvttsd2si	eax, xmm0
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	lea	rax, -40[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	mov	DWORD PTR -40[rbp], eax
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, pie[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	pxor	xmm0, xmm0
	movsd	QWORD PTR -24[rbp], xmm0
	jmp	.L11
	movsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR .LC4[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movq	xmm0, rax
	call	piece
	mov	edx, DWORD PTR -40[rbp]
	cmp	eax, edx
	jge	.L12
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L11
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR .LC5[rip]
	ja	.L13
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC6[rip]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: