main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -8[rbp], 0
	jmp	.L2
	mov	QWORD PTR -16[rbp], 0
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	add	rax, rdx
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, 0
	jmp	.L5
	add	QWORD PTR -16[rbp], 1
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	comisd	xmm0, xmm1
	jnb	.L6
	add	QWORD PTR -8[rbp], 1
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	comisd	xmm0, xmm1
	jnb	.L7
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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