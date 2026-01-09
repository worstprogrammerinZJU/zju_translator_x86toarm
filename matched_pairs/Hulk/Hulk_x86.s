main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	cmp	DWORD PTR -8[rbp], 1
	jne	.L3
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jne	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L6
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	je	.L7
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L8
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	je	.L9
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L10
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
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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