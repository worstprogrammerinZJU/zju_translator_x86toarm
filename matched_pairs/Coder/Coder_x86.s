main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
	mov	DWORD PTR -12[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	je	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L6
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L7
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -16[rbp], 1
	jmp	.L9
	mov	DWORD PTR -20[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -16[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L12
	mov	eax, DWORD PTR -16[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L13
	mov	eax, DWORD PTR -20[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L13
	mov	esi, 67
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L14
	mov	esi, 46
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L15
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L16
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
	jne	.L20
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L20
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