compareCars:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
carFleet:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	mov	DWORD PTR -84[rbp], edi
	mov	QWORD PTR -96[rbp], rsi
	mov	DWORD PTR -88[rbp], edx
	mov	QWORD PTR -104[rbp], rcx
	mov	DWORD PTR -108[rbp], r8d
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -88[rbp], 0
	jne	.L4
	mov	eax, 0
	jmp	.L5
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -64[rbp], rdx
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -72[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -96[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*8], ecx
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -36[rbp]
	movsx	rdx, edx
	mov	DWORD PTR 4[rax+rdx*8], ecx
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -88[rbp]
	jl	.L10
	mov	esi, DWORD PTR -88[rbp]
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, compareCars[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	DWORD PTR -40[rbp], 0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -48[rbp], xmm0
	mov	eax, DWORD PTR -88[rbp]
	sub	eax, 1
	mov	DWORD PTR -52[rbp], eax
	jmp	.L11
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -80[rbp], xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	comisd	xmm0, QWORD PTR -48[rbp]
	jbe	.L12
	add	DWORD PTR -40[rbp], 1
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	QWORD PTR -48[rbp], xmm0
	sub	DWORD PTR -52[rbp], 1
	cmp	DWORD PTR -52[rbp], 0
	jns	.L14
	mov	eax, DWORD PTR -40[rbp]
	mov	rsp, rbx
	lea	rsp, -24[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
0:
1:
2:
3:
4: