main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L4
	mov	DWORD PTR -12[rbp], 1
	jmp	.L5
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L8
	mov	DWORD PTR -20[rbp], 1
	jmp	.L9
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L10
	mov	DWORD PTR -24[rbp], 1
	jmp	.L11
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	add	eax, eax
	cmp	DWORD PTR -24[rbp], eax
	jl	.L12
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	sub	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	jg	.L13
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
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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