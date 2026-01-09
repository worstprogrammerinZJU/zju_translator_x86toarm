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
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	and	eax, 1
	test	eax, eax
	jne	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	DWORD PTR -12[rbp], 2
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 2
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L5
	mov	DWORD PTR -16[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -16[rbp]
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -16[rbp], 2
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 2
	cmp	DWORD PTR -16[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L2
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
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