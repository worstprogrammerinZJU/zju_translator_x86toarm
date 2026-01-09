main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	DWORD PTR -24[rbp], 1
	jmp	.L2
	mov	DWORD PTR -28[rbp], 1
	jmp	.L3
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 1
	jne	.L4
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 3
	mov	edi, eax
	call	abs@PLT
	mov	ebx, eax
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 3
	mov	edi, eax
	call	abs@PLT
	add	eax, ebx
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -28[rbp], 1
	cmp	DWORD PTR -28[rbp], 5
	jle	.L5
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 5
	jle	.L6
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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