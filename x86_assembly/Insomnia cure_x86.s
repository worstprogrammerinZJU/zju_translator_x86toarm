main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
	mov	ecx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L3
	mov	ecx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L3
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L3
	mov	ecx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L4
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L9
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L9
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