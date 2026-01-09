main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -52[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	edx, DWORD PTR -48[rbp]
	mov	eax, DWORD PTR -52[rbp]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -32[rbp], edx
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jle	.L4
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -48[rbp]
	sub	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -40[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -48[rbp]
	cmp	edx, eax
	jge	.L6
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -16[rbp], edx
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -52[rbp]
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, DWORD PTR -48[rbp]
	add	eax, edx
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L8
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