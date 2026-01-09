main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR -16[rbp]
	cmp	rdx, rax
	jg	.L2
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rax
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, rax
	movsd	QWORD PTR -24[rbp], xmm2
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 2
	mov	rdi, rax
	movsd	QWORD PTR -32[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 2
	mov	rdi, rax
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -32[rbp]
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movsd	xmm2, QWORD PTR -24[rbp]
	comisd	xmm2, xmm0
	seta	al
	test	al, al
	je	.L4
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
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
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -12[rbp]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, QWORD PTR -8[rbp]
	movq	rax, xmm2
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	movq	rax, xmm0
	movq	xmm0, rax
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