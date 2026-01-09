main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	rax, rsp
	mov	rbx, rax
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -56[rbp], 0
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -80[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
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
	mov	QWORD PTR -88[rbp], rax
	mov	eax, DWORD PTR -108[rbp]
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
	mov	edi, 16
	mov	edx, 0
	div	rdi
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
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -60[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L9
	mov	DWORD PTR -64[rbp], 0
	jmp	.L10
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jle	.L11
	mov	eax, DWORD PTR -64[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jg	.L12
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jns	.L13
	mov	eax, DWORD PTR -64[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jns	.L13
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	edx, DWORD PTR -64[rbp]
	add	edx, 1
	neg	eax
	mov	ecx, eax
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -108[rbp]
	sub	eax, 1
	cmp	DWORD PTR -64[rbp], eax
	jl	.L14
	mov	rax, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR [rax]
	neg	eax
	mov	edx, eax
	mov	rax, QWORD PTR -104[rbp]
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -56[rbp], 1
	mov	DWORD PTR -68[rbp], 0
	jmp	.L15
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jle	.L16
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jg	.L17
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jns	.L18
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jns	.L18
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	edx, DWORD PTR -68[rbp]
	add	edx, 1
	neg	eax
	mov	ecx, eax
	mov	rax, QWORD PTR -104[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -108[rbp]
	sub	eax, 1
	cmp	DWORD PTR -68[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jge	.L20
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L21
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsp, rbx
	mov	eax, 0
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L25
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L25
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: