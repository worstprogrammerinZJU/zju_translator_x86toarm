findNumberOfLIS:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -120[rbp], rdi
	mov	DWORD PTR -124[rbp], esi
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -124[rbp], 0
	jne	.L2
	mov	eax, 0
	jmp	.L3
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -80[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L5
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L4
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L6
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -88[rbp], rax
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -96[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
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
	je	.L8
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L7
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L9
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -52[rbp], 1
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	jmp	.L10
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 1
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 1
	mov	DWORD PTR -64[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L12
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jl	.L13
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	jmp	.L12
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jne	.L12
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	add	ecx, eax
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L14
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, edx
	mov	edi, eax
	mov	eax, 0
	call	fmax@PLT
	mov	DWORD PTR -52[rbp], eax
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L15
	mov	DWORD PTR -68[rbp], 0
	jmp	.L16
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	DWORD PTR -52[rbp], eax
	jne	.L17
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	add	DWORD PTR -56[rbp], eax
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L18
	mov	eax, DWORD PTR -56[rbp]
	mov	rsp, rbx
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
0:
1:
2:
3:
4: