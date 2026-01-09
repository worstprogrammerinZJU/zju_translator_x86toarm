new21Game:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	DWORD PTR -68[rbp], edi
	mov	DWORD PTR -72[rbp], esi
	mov	DWORD PTR -76[rbp], edx
	mov	rax, rsp
	mov	rsi, rax
	cmp	DWORD PTR -72[rbp], 0
	je	.L2
	mov	edx, DWORD PTR -72[rbp]
	mov	eax, DWORD PTR -76[rbp]
	add	eax, edx
	cmp	DWORD PTR -68[rbp], eax
	jl	.L3
	movsd	xmm0, QWORD PTR .LC0[rip]
	jmp	.L4
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	mov	eax, DWORD PTR -68[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -48[rbp], rdx
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	movsx	rdx, eax
	mov	rcx, rdx
	mov	ebx, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L6
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L5
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L7
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR [rax], xmm0
	mov	DWORD PTR -36[rbp], 1
	jmp	.L8
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -76[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	divsd	xmm0, xmm1
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	movsd	QWORD PTR [rax+rdx*8], xmm0
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	jge	.L9
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	movsd	xmm0, QWORD PTR [rax+rdx*8]
	movsd	xmm1, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	jmp	.L10
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	movsd	xmm0, QWORD PTR [rax+rdx*8]
	movsd	xmm1, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -76[rbp]
	jl	.L11
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -76[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -56[rbp]
	movsx	rdx, edx
	movsd	xmm1, QWORD PTR [rax+rdx*8]
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jle	.L12
	movsd	xmm0, QWORD PTR -32[rbp]
	mov	rsp, rsi
	movq	rax, xmm0
	movq	xmm0, rax
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: