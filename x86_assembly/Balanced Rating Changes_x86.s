_Z5printi:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	BYTE PTR -1[rbp], 1
	jmp	.L2
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERf@PLT
	movss	xmm0, DWORD PTR -8[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	divss	xmm0, xmm1
	movss	xmm1, DWORD PTR -8[rbp]
	movss	xmm2, DWORD PTR .LC0[rip]
	divss	xmm1, xmm2
	cvttss2si	eax, xmm1
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, eax
	ucomiss	xmm0, xmm1
	jp	.L3
	ucomiss	xmm0, xmm1
	jne	.L3
	movss	xmm0, DWORD PTR -8[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	divss	xmm0, xmm1
	cvttss2si	eax, xmm0
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L2
	cmp	BYTE PTR -1[rbp], 0
	je	.L6
	movss	xmm0, DWORD PTR -8[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	divss	xmm0, xmm1
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, QWORD PTR .LC1[rip]
	subsd	xmm0, xmm1
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	BYTE PTR -1[rbp], 0
	jmp	.L2
	movss	xmm0, DWORD PTR -8[rbp]
	movss	xmm1, DWORD PTR .LC0[rip]
	divss	xmm0, xmm1
	pxor	xmm1, xmm1
	cvtss2sd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	cvttsd2si	eax, xmm0
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	BYTE PTR -1[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L7
	nop
	nop
	leave
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
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z5printi
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
	jne	.L13
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L13
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