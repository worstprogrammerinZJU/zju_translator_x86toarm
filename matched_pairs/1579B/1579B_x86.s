_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 120
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -116[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -116[rbp]
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
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L7
	mov	ecx, DWORD PTR -116[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, ecx
	mov	r12, rax
	mov	r13d, 0
	imul	rdx, r13, 96
	imul	rax, r12, 0
	lea	rsi, [rdx+rax]
	mov	eax, 96
	mul	r12
	add	rsi, rdx
	mov	rdx, rsi
	movsx	rdx, ecx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	imul	rdx, r15, 96
	imul	rax, r14, 0
	lea	rsi, [rdx+rax]
	mov	eax, 96
	mul	r14
	add	rsi, rdx
	mov	rdx, rsi
	movsx	rdx, ecx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
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
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 1
	jmp	.L11
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	DWORD PTR -108[rbp], eax
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -60[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jge	.L12
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	mov	DWORD PTR -64[rbp], eax
	mov	DWORD PTR -68[rbp], 0
	jmp	.L13
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	lea	esi, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, esi
	mov	DWORD PTR [rax+rdx*4], ecx
	sub	DWORD PTR -64[rbp], 1
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	DWORD PTR -108[rbp], eax
	jge	.L14
	cmp	DWORD PTR -64[rbp], 0
	jns	.L15
	mov	eax, DWORD PTR -64[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -88[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR -108[rbp]
	mov	DWORD PTR [rax+rdx*4], ecx
	mov	eax, DWORD PTR -60[rbp]
	lea	ecx, 1[rax]
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	DWORD PTR [rax], ecx
	mov	eax, DWORD PTR -64[rbp]
	lea	ecx, 2[rax]
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	add	rax, 4
	mov	DWORD PTR [rax], ecx
	mov	rcx, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 8[rax]
	mov	eax, DWORD PTR -68[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -56[rbp], 1
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L16
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	DWORD PTR -72[rbp], 0
	jmp	.L17
	mov	rcx, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -72[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	add	rax, 4
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rcx, rax
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -72[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	mov	rdi, rcx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rcx, rax
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -72[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rsi
	add	rax, 8
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	mov	rdi, rcx
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	add	DWORD PTR -72[rbp], 1
	mov	eax, DWORD PTR -72[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jl	.L18
	mov	rsp, rbx
	mov	eax, DWORD PTR -112[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -112[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L19
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
	jne	.L23
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L23
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