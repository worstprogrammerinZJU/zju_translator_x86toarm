max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	pop	rbp
	ret
maxCoins:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 152
	mov	QWORD PTR -136[rbp], rdi
	mov	DWORD PTR -140[rbp], esi
	mov	rax, rsp
	mov	QWORD PTR -184[rbp], rax
	mov	eax, DWORD PTR -140[rbp]
	add	eax, 2
	mov	DWORD PTR -68[rbp], eax
	mov	edx, DWORD PTR -68[rbp]
	movsx	rax, edx
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, edx
	mov	rcx, rax
	mov	ebx, 0
	movsx	rax, edx
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
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
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, 1
	mov	rdx, QWORD PTR -88[rbp]
	movsx	rcx, eax
	mov	DWORD PTR [rdx+rcx*4], 1
	mov	rdx, QWORD PTR -88[rbp]
	cdqe
	mov	edx, DWORD PTR [rdx+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -52[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -136[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, 1
	cmp	DWORD PTR -52[rbp], eax
	jl	.L8
	mov	ecx, DWORD PTR -68[rbp]
	mov	esi, DWORD PTR -68[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	movsx	rax, ecx
	lea	rbx, 0[0+rax*4]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -104[rbp], rax
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
	mov	rdi, rax
	and	rdi, -4096
	mov	rdx, rsp
	sub	rdx, rdi
	cmp	rsp, rdx
	je	.L10
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L9
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L11
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -112[rbp], rax
	movsx	rdx, ecx
	movsx	rax, esi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -112[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	eax, 0
	call	memset@PLT
	mov	DWORD PTR -56[rbp], 2
	jmp	.L12
	mov	DWORD PTR -60[rbp], 0
	jmp	.L13
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	eax, edx
	mov	DWORD PTR -116[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	add	eax, 1
	mov	DWORD PTR -64[rbp], eax
	jmp	.L14
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	imul	ecx, eax
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -116[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, ecx
	imul	esi, eax
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -112[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rdi
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	edi, [rsi+rax]
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -112[rbp]
	mov	edx, DWORD PTR -116[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	edx, [rdi+rax]
	mov	rsi, rbx
	shr	rsi, 2
	mov	rax, QWORD PTR -112[rbp]
	mov	ecx, DWORD PTR -116[rbp]
	movsx	rdi, ecx
	mov	ecx, DWORD PTR -60[rbp]
	movsx	rcx, ecx
	imul	rcx, rsi
	add	rcx, rdi
	mov	eax, DWORD PTR [rax+rcx*4]
	mov	r12, rbx
	shr	r12, 2
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	rdx, QWORD PTR -112[rbp]
	mov	ecx, DWORD PTR -116[rbp]
	movsx	rsi, ecx
	mov	ecx, DWORD PTR -60[rbp]
	movsx	rcx, ecx
	imul	rcx, r12
	add	rcx, rsi
	mov	DWORD PTR [rdx+rcx*4], eax
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -116[rbp]
	jl	.L15
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	sub	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L16
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jl	.L17
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -112[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rsp, QWORD PTR -184[rbp]
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