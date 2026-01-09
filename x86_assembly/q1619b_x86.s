main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERd@PLT
	mov	rax, QWORD PTR -56[rbp]
	movq	xmm0, rax
	call	sqrt@PLT
	cvttsd2si	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movq	xmm0, rax
	call	cbrt@PLT
	cvttsd2si	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	movq	xmm0, rax
	call	cbrt@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	call	sqrt@PLT
	cvttsd2si	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	sub	rax, QWORD PTR -32[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	movsd	QWORD PTR -40[rbp], xmm0
	mov	rax, QWORD PTR -40[rbp]
	movq	xmm0, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEd@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L3
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
	jne	.L7
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L7
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