main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -88[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -104[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -120[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -128[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -88[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -96[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm1, QWORD PTR -104[rbp]
	movsd	xmm0, QWORD PTR -120[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm1, QWORD PTR -112[rbp]
	movsd	xmm0, QWORD PTR -128[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	movsd	xmm1, QWORD PTR -88[rbp]
	subsd	xmm0, xmm1
	movq	rax, xmm0
	mov	edi, 2
	movq	xmm0, rax
	movsd	QWORD PTR -136[rbp], xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	movsd	xmm1, QWORD PTR -96[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, xmm1
	movq	rax, xmm2
	mov	edi, 2
	movq	xmm0, rax
	movapd	xmm3, xmm0
	addsd	xmm3, QWORD PTR -136[rbp]
	movq	rax, xmm3
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movsd	xmm1, QWORD PTR .LC0[rip]
	movq	xmm0, rax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -104[rbp]
	movsd	xmm1, QWORD PTR -120[rbp]
	subsd	xmm0, xmm1
	movq	rax, xmm0
	mov	edi, 2
	movq	xmm0, rax
	movsd	QWORD PTR -136[rbp], xmm0
	movsd	xmm0, QWORD PTR -112[rbp]
	movsd	xmm1, QWORD PTR -128[rbp]
	movapd	xmm4, xmm0
	subsd	xmm4, xmm1
	movq	rax, xmm4
	mov	edi, 2
	movq	xmm0, rax
	movapd	xmm5, xmm0
	addsd	xmm5, QWORD PTR -136[rbp]
	movq	rax, xmm5
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movsd	xmm1, QWORD PTR .LC0[rip]
	movq	xmm0, rax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	movq	rax, xmm0
	mov	edi, 2
	movq	xmm0, rax
	movsd	QWORD PTR -136[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm6, xmm0
	subsd	xmm6, QWORD PTR -32[rbp]
	movq	rax, xmm6
	mov	edi, 2
	movq	xmm0, rax
	movapd	xmm7, xmm0
	addsd	xmm7, QWORD PTR -136[rbp]
	movq	rax, xmm7
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -56[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, QWORD PTR -48[rbp]
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	comisd	xmm0, QWORD PTR -64[rbp]
	jbe	.L7
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
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
	movsd	QWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -12[rbp], edi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
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
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
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