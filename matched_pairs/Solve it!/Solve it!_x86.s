	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	and	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	or	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	not	eax
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStorSt13_Ios_FmtflagsS_
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStanSt13_Ios_FmtflagsS_
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 24[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	_ZStcoSt13_Ios_Fmtflags
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 24
	mov	esi, edx
	mov	rdi, rax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_ZStanSt13_Ios_FmtflagsS_
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 24
	mov	esi, edx
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 260
	mov	esi, 4
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
_ZSt12setprecisioni:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rbx, rax
	mov	edi, 6
	call	_ZSt12setprecisioni
	mov	esi, eax
	mov	rdi, rbx
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERf@PLT
	mov	rdx, rax
	lea	rax, -36[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERf@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERf@PLT
	mov	rdx, rax
	lea	rax, -44[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERf@PLT
	movss	xmm1, DWORD PTR -32[rbp]
	movss	xmm0, DWORD PTR -44[rbp]
	mulss	xmm0, xmm1
	movss	DWORD PTR -20[rbp], xmm0
	movss	xmm0, DWORD PTR -36[rbp]
	movss	xmm2, DWORD PTR -44[rbp]
	movaps	xmm1, xmm0
	subss	xmm1, xmm2
	movss	xmm0, DWORD PTR -40[rbp]
	mulss	xmm0, xmm1
	movss	DWORD PTR -24[rbp], xmm0
	movss	xmm0, DWORD PTR -36[rbp]
	movss	xmm2, DWORD PTR -44[rbp]
	movaps	xmm1, xmm0
	subss	xmm1, xmm2
	movss	xmm0, DWORD PTR -32[rbp]
	movss	xmm2, DWORD PTR -40[rbp]
	subss	xmm0, xmm2
	mulss	xmm1, xmm0
	movss	xmm0, DWORD PTR .LC0[rip]
	mulss	xmm0, xmm1
	movss	DWORD PTR -28[rbp], xmm0
	movss	xmm0, DWORD PTR -20[rbp]
	addss	xmm0, DWORD PTR -24[rbp]
	addss	xmm0, DWORD PTR -28[rbp]
	movd	eax, xmm0
	movd	xmm0, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEf@PLT
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
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