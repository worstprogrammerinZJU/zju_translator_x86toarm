main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, 2
	mov	edi, eax
	movsd	QWORD PTR -24[rbp], xmm0
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, 2
	mov	edi, eax
	movapd	xmm1, xmm0
	addsd	xmm1, QWORD PTR -24[rbp]
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	cvtsd2ss	xmm0, xmm0
	pxor	xmm2, xmm2
	cvtss2sd	xmm2, xmm0
	movsd	QWORD PTR -24[rbp], xmm2
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, 2
	mov	edi, eax
	movsd	QWORD PTR -32[rbp], xmm0
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, 2
	mov	edi, eax
	movapd	xmm3, xmm0
	addsd	xmm3, QWORD PTR -32[rbp]
	movq	rax, xmm3
	movq	xmm0, rax
	call	sqrt@PLT
	movsd	xmm2, QWORD PTR -24[rbp]
	ucomisd	xmm2, xmm0
	setnp	al
	mov	edx, 0
	ucomisd	xmm2, xmm0
	cmovne	eax, edx
	test	al, al
	je	.L5
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L2
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -4[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L6
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -8[rbp]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, DWORD PTR -4[rbp]
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