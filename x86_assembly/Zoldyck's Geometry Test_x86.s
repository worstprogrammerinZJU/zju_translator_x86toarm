_ZL2pi:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rax, QWORD PTR .LC0[rip]
	movq	xmm0, rax
	call	sqrt@PLT
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -20[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L10
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	comisd	xmm0, QWORD PTR -16[rbp]
	jb	.L11
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L4
	lea	rax, .LC3[rip]
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
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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