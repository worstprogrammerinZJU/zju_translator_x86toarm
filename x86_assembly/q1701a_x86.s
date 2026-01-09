main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	lea	rdx, -48[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 1
	jle	.L5
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 1
	jle	.L6
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L7
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	eax, DWORD PTR -48[rbp+rax*4]
	cmp	eax, 1
	jne	.L9
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 1
	jle	.L10
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 1
	jle	.L11
	cmp	DWORD PTR -16[rbp], 0
	jne	.L12
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	cmp	DWORD PTR -16[rbp], 4
	jne	.L14
	mov	esi, 2
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L15
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
	jne	.L19
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L19
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