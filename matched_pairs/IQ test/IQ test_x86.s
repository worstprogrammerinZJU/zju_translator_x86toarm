main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	lea	rdx, -448[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L3
	mov	DWORD PTR -24[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	and	eax, 1
	test	eax, eax
	jne	.L5
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L6
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L7
	cmp	DWORD PTR -8[rbp], 1
	jne	.L8
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L9
	mov	eax, DWORD PTR -12[rbp]
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