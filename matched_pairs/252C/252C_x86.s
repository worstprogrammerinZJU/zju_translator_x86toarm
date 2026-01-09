_ZL3INF:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	QWORD PTR -40[rbp], rcx
	jmp	.L2
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -40[rbp], rax
	jge	.L3
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -40[rbp], rax
	jge	.L6
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -32[rbp]
	jl	.L7
	mov	eax, DWORD PTR -28[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	mov	rax, rsp
	mov	rbx, rax
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -120[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -112[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -80[rbp], rdx
	mov	rdx, rax
	mov	r14, rdx
	mov	r15d, 0
	mov	rdx, rax
	mov	r12, rdx
	mov	r13d, 0
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -112[rbp]
	cmp	rdx, rax
	jl	.L13
	mov	QWORD PTR -64[rbp], 0
	mov	DWORD PTR -68[rbp], 0
	jmp	.L14
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	rdx, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -120[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -112[rbp]
	sub	eax, 1
	mov	edi, eax
	mov	esi, DWORD PTR -68[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rcx, rdx
	mov	edx, edi
	mov	rdi, rax
	call	_Z13binary_searchPxiix
	cdqe
	mov	QWORD PTR -96[rbp], rax
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -96[rbp]
	sub	rax, rdx
	cmp	rax, 1
	jle	.L15
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -96[rbp]
	sub	rax, rdx
	add	rax, 1
	mov	QWORD PTR -104[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	lea	rdx, -2[rax]
	mov	rax, QWORD PTR -104[rbp]
	sub	rax, 1
	imul	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	add	QWORD PTR -64[rbp], rax
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -112[rbp]
	cmp	rdx, rax
	jl	.L16
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
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
	jne	.L20
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L20
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