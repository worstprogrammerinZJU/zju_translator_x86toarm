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
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L2
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -12[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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