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
	movss	xmm0, DWORD PTR -4[rbp]
	cvttss2si	eax, xmm0
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	movss	xmm1, DWORD PTR -4[rbp]
	ucomiss	xmm0, xmm1
	jp	.L2
	ucomiss	xmm0, xmm1
	jne	.L2
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movd	xmm0, eax
	mov	rdi, rdx
	call	_ZNSolsEf@PLT
	jmp	.L4
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	movss	xmm0, DWORD PTR -4[rbp]
	cvttss2si	eax, xmm0
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	movss	xmm0, DWORD PTR -4[rbp]
	movss	xmm1, DWORD PTR -4[rbp]
	cvttss2si	eax, xmm1
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, eax
	subss	xmm0, xmm1
	movd	eax, xmm0
	movd	xmm0, eax
	mov	rdi, rdx
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
	jne	.L9
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L9
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