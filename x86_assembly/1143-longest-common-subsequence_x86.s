	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 120
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rax, rsp
	mov	rbx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -68[rbp], eax
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -72[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	lea	esi, 1[rax]
	mov	eax, DWORD PTR -68[rbp]
	lea	edi, 1[rax]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, esi
	lea	rcx, 0[0+rax*4]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -88[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	mov	r10, QWORD PTR -144[rbp]
	mov	r11, QWORD PTR -136[rbp]
	mov	rdx, r11
	mov	r8, QWORD PTR -128[rbp]
	mov	r9, QWORD PTR -120[rbp]
	imul	rdx, r8
	mov	QWORD PTR -128[rbp], r8
	mov	QWORD PTR -120[rbp], r9
	mov	rax, r9
	imul	rax, r10
	lea	r8, [rdx+rax]
	mov	rax, r10
	mul	QWORD PTR -128[rbp]
	add	r8, rdx
	mov	rdx, r8
	movsx	rax, esi
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	r8, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	r8, rdx
	mov	rdx, r8
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rsi, rax
	and	rsi, -4096
	mov	rdx, rsp
	sub	rdx, rsi
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
	mov	QWORD PTR -96[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L5
	mov	rsi, rcx
	shr	rsi, 2
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rsi
	mov	DWORD PTR [rax+rdx*4], 0
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jle	.L6
	mov	DWORD PTR -56[rbp], 0
	jmp	.L7
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], 0
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	jle	.L8
	mov	DWORD PTR -60[rbp], 1
	jmp	.L9
	mov	DWORD PTR -64[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rsi, -1[rax]
	mov	rax, QWORD PTR -112[rbp]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L11
	mov	rsi, rcx
	shr	rsi, 2
	mov	eax, DWORD PTR -60[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -64[rbp]
	lea	edi, -1[rax]
	mov	rax, QWORD PTR -96[rbp]
	movsx	rdi, edi
	movsx	rdx, edx
	imul	rdx, rsi
	add	rdx, rdi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rdi, rcx
	shr	rdi, 2
	lea	esi, 1[rax]
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	r8, edx
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	imul	rdx, rdi
	add	rdx, r8
	mov	DWORD PTR [rax+rdx*4], esi
	jmp	.L12
	mov	rsi, rcx
	shr	rsi, 2
	mov	eax, DWORD PTR -64[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -96[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	imul	rdx, rsi
	add	rdx, rdi
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rdi, rcx
	shr	rdi, 2
	mov	eax, DWORD PTR -60[rbp]
	lea	r8d, -1[rax]
	mov	rax, QWORD PTR -96[rbp]
	mov	esi, DWORD PTR -64[rbp]
	movsx	r9, esi
	movsx	rsi, r8d
	imul	rsi, rdi
	add	rsi, r9
	mov	eax, DWORD PTR [rax+rsi*4]
	mov	rdi, rcx
	shr	rdi, 2
	cmp	edx, eax
	cmovl	edx, eax
	mov	rax, QWORD PTR -96[rbp]
	mov	esi, DWORD PTR -64[rbp]
	movsx	r8, esi
	mov	esi, DWORD PTR -60[rbp]
	movsx	rsi, esi
	imul	rsi, rdi
	add	rsi, r8
	mov	DWORD PTR [rax+rsi*4], edx
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -72[rbp]
	jle	.L13
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jle	.L14
	shr	rcx, 2
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
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