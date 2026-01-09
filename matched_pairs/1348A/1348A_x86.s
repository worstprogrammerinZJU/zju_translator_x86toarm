main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 160
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -160[rbp+rax*4], edx
	sal	DWORD PTR -4[rbp]
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 29
	jle	.L3
	jmp	.L4
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	sub	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	add	DWORD PTR -16[rbp], eax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -32[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L9
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