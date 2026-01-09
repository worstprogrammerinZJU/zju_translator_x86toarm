_ZSt3absf:
	endbr64
	push	rbp
	mov	rbp, rsp
	movss	DWORD PTR -4[rbp], xmm0
	movss	xmm0, DWORD PTR -4[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	andps	xmm0, xmm1
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERf@PLT
	mov	eax, DWORD PTR -4[rbp]
	movd	xmm0, eax
	call	_ZSt3absf
	movd	eax, xmm0
	movss	xmm0, DWORD PTR .LC1[rip]
	movd	xmm1, eax
	divss	xmm1, xmm0
	movd	eax, xmm1
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