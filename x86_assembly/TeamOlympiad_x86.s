main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 200
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -140[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -140[rbp]
	movsx	rax, edx
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, edx
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, edx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
	cmp	rsp, rcx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L4
	mov	rax, rdx
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
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	mov	edx, DWORD PTR -140[rbp]
	movsx	rax, edx
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, edx
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, edx
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	movsx	rax, edx
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
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -112[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -192[rbp], rdx
	mov	QWORD PTR -184[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -208[rbp], rdx
	mov	QWORD PTR -200[rbp], 0
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
	mov	QWORD PTR -120[rbp], rax
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -128[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -224[rbp], rdx
	mov	QWORD PTR -216[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -240[rbp], rdx
	mov	QWORD PTR -232[rbp], 0
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
	je	.L12
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L11
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L13
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -136[rbp], rax
	mov	DWORD PTR -68[rbp], 0
	jmp	.L14
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	eax, 1
	jne	.L15
	mov	eax, DWORD PTR -68[rbp]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -52[rbp], 1
	jmp	.L16
	mov	rax, QWORD PTR -88[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	eax, 2
	jne	.L17
	mov	eax, DWORD PTR -68[rbp]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -120[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -56[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -68[rbp]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -60[rbp], 1
	mov	DWORD PTR -64[rbp], 10000
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -52[rbp]
	jle	.L18
	mov	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jle	.L19
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jle	.L20
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -64[rbp], eax
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L21
	mov	eax, DWORD PTR -64[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -72[rbp], 0
	jmp	.L22
	mov	rax, QWORD PTR -104[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rcx, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	mov	rdi, rcx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rcx, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	mov	rdi, rcx
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -72[rbp], 1
	mov	eax, DWORD PTR -72[rbp]
	cmp	eax, DWORD PTR -64[rbp]
	jl	.L23
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
	jne	.L27
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L27
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