main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 152
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -52[rbp], 1
	jmp	.L2
	mov	rax, rsp
	mov	QWORD PTR -184[rbp], rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -116[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	esi, DWORD PTR -116[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -88[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	movsx	rbx, esi
	mov	edi, DWORD PTR -112[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, edi
	mov	r14, rax
	mov	r15d, 0
	mov	rdx, r13
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r12
	lea	rcx, [rdx+rax]
	mov	rax, r12
	mul	r14
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	mov	r8, QWORD PTR -144[rbp]
	mov	r9, QWORD PTR -136[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -160[rbp]
	mov	r11, QWORD PTR -152[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	mov	edx, 16
	sub	rdx, 1
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
	add	rax, 0
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L6
	mov	DWORD PTR -60[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L8
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L9
	mov	DWORD PTR -64[rbp], 0
	mov	DWORD PTR -68[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -116[rbp]
	sub	eax, 1
	mov	rsi, QWORD PTR -104[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 82
	jne	.L11
	add	DWORD PTR -64[rbp], 1
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L12
	mov	DWORD PTR -72[rbp], 0
	mov	DWORD PTR -76[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -112[rbp]
	lea	edx, -1[rax]
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -76[rbp]
	movsx	rcx, eax
	movsx	rax, edx
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 68
	jne	.L14
	add	DWORD PTR -72[rbp], 1
	add	DWORD PTR -76[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jl	.L15
	mov	edx, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -72[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rsp, QWORD PTR -184[rbp]
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jle	.L16
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