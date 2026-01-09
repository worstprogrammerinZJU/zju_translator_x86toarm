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
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -92[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -64[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*8]
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -72[rbp], rax
	mov	eax, DWORD PTR -92[rbp]
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
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	cmp	DWORD PTR -52[rbp], 0
	jne	.L9
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	jmp	.L10
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	add	rcx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	QWORD PTR [rax+rdx*8], rcx
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L11
	mov	DWORD PTR -56[rbp], 0
	jmp	.L12
	lea	rax, -100[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -104[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -100[rbp]
	sub	eax, 1
	mov	DWORD PTR -100[rbp], eax
	mov	eax, DWORD PTR -104[rbp]
	sub	eax, 1
	mov	DWORD PTR -104[rbp], eax
	mov	eax, DWORD PTR -100[rbp]
	test	eax, eax
	jne	.L13
	mov	edx, DWORD PTR -104[rbp]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L14
	mov	edx, DWORD PTR -104[rbp]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR -100[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	rax, rcx
	sub	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L15
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
	jne	.L19
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L19
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