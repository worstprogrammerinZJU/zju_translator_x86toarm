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
deleteAndEarn:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 120
	mov	QWORD PTR -120[rbp], rdi
	mov	DWORD PTR -124[rbp], esi
	mov	rax, rsp
	mov	rbx, rax
	cmp	DWORD PTR -124[rbp], 0
	jne	.L4
	mov	eax, 0
	jmp	.L5
	mov	rax, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -52[rbp], eax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR -52[rbp], eax
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L7
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -80[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -160[rbp], rdx
	mov	QWORD PTR -152[rbp], 0
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
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L10
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -60[rbp], 0
	jmp	.L11
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 0
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jle	.L12
	mov	DWORD PTR -64[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	esi, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	add	ecx, esi
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -124[rbp]
	jl	.L14
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -96[rbp], rdx
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
	je	.L16
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L15
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L17
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -104[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	DWORD PTR -68[rbp], 2
	jmp	.L18
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, -2[rax]
	mov	rax, QWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -68[rbp]
	lea	ecx, -1[rax]
	mov	rax, QWORD PTR -104[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	rdx, QWORD PTR -104[rbp]
	mov	ecx, DWORD PTR -68[rbp]
	movsx	rcx, ecx
	mov	DWORD PTR [rdx+rcx*4], eax
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jle	.L19
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
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