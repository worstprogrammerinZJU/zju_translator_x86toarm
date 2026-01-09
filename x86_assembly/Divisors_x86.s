main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	movss	xmm0, DWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, DWORD PTR -4[rbp]
	divss	xmm0, xmm1
	movss	xmm1, DWORD PTR -8[rbp]
	pxor	xmm2, xmm2
	cvtsi2ss	xmm2, DWORD PTR -4[rbp]
	divss	xmm1, xmm2
	cvttss2si	eax, xmm1
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, eax
	ucomiss	xmm0, xmm1
	jp	.L3
	ucomiss	xmm0, xmm1
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, DWORD PTR -4[rbp]
	movss	xmm0, DWORD PTR -8[rbp]
	comiss	xmm0, xmm1
	jnb	.L5
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