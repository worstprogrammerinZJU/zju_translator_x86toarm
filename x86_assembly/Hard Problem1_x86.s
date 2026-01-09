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
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERf@PLT
	movss	xmm0, DWORD PTR -8[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	divss	xmm0, xmm1
	movss	xmm1, DWORD PTR -4[rbp]
	ucomiss	xmm0, xmm1
	jp	.L8
	ucomiss	xmm0, xmm1
	je	.L2
	movss	xmm0, DWORD PTR -4[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	divss	xmm0, xmm1
	movss	xmm1, DWORD PTR -8[rbp]
	ucomiss	xmm0, xmm1
	jp	.L4
	ucomiss	xmm0, xmm1
	jne	.L4
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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