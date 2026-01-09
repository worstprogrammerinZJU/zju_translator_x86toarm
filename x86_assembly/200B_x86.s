main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	pxor	xmm0, xmm0
	movss	DWORD PTR -4[rbp], xmm0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERf@PLT
	movss	xmm0, DWORD PTR -20[rbp]
	movss	xmm1, DWORD PTR -4[rbp]
	addss	xmm0, xmm1
	movss	DWORD PTR -4[rbp], xmm0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, eax
	movss	xmm0, DWORD PTR -4[rbp]
	divss	xmm0, xmm1
	movss	DWORD PTR -12[rbp], xmm0
	mov	eax, DWORD PTR -12[rbp]
	movd	xmm0, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEf@PLT
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