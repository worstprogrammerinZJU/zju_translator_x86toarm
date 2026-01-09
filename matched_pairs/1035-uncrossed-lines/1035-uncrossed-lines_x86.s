maxUncrossedLines:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	QWORD PTR -104[rbp], rdx
	mov	DWORD PTR -96[rbp], ecx
	mov	rax, rsp
	mov	QWORD PTR -112[rbp], rax
	mov	eax, DWORD PTR -96[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -92[rbp]
	lea	esi, 1[rax]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -64[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	movsx	rax, ecx
	lea	rbx, 0[0+rax*4]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rdi, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rax, ecx
	mov	r10, rax
	mov	r11d, 0
	movsx	rax, esi
	mov	r8, rax
	mov	r9d, 0
	mov	rdx, r11
	imul	rdx, r8
	mov	rax, r9
	imul	rax, r10
	lea	rdi, [rdx+rax]
	mov	rax, r10
	mul	r8
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rdx, ecx
	movsx	rax, esi
	imul	rax, rdx
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
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L5
	mov	DWORD PTR -56[rbp], 0
	jmp	.L6
	cmp	DWORD PTR -52[rbp], 0
	je	.L7
	cmp	DWORD PTR -56[rbp], 0
	jne	.L8
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	DWORD PTR [rax+rdx*4], 0
	jmp	.L9
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, -4[rax]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L10
	mov	rcx, rbx
	shr	rcx, 2
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -56[rbp]
	lea	esi, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	movsx	rsi, esi
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsi, rbx
	shr	rsi, 2
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rsi
	add	rdx, rdi
	mov	DWORD PTR [rax+rdx*4], ecx
	jmp	.L9
	mov	rcx, rbx
	shr	rcx, 2
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rsi, rbx
	shr	rsi, 2
	mov	eax, DWORD PTR -52[rbp]
	lea	edi, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR -56[rbp]
	movsx	r8, ecx
	movsx	rcx, edi
	imul	rcx, rsi
	add	rcx, r8
	mov	eax, DWORD PTR [rax+rcx*4]
	mov	r12, rbx
	shr	r12, 2
	mov	esi, edx
	mov	edi, eax
	mov	eax, 0
	call	fmax@PLT
	mov	rdx, QWORD PTR -80[rbp]
	mov	ecx, DWORD PTR -56[rbp]
	movsx	rsi, ecx
	mov	ecx, DWORD PTR -52[rbp]
	movsx	rcx, ecx
	imul	rcx, r12
	add	rcx, rsi
	mov	DWORD PTR [rdx+rcx*4], eax
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -96[rbp]
	jle	.L11
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	cmp	eax, DWORD PTR -92[rbp]
	jle	.L12
	shr	rbx, 2
	mov	rcx, rbx
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -96[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsp, QWORD PTR -112[rbp]
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