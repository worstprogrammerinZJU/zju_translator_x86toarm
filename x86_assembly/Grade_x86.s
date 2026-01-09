main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 94
	jle	.L2
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 94
	jg	.L4
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 84
	jle	.L4
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 84
	jg	.L5
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 79
	jle	.L5
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 79
	jg	.L6
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 74
	jle	.L6
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 74
	jg	.L7
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 69
	jle	.L7
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 69
	jg	.L8
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 64
	jle	.L8
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 64
	jg	.L9
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 59
	jle	.L9
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 59
	jg	.L10
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 44
	jle	.L10
	lea	rax, .LC7[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 44
	jg	.L3
	lea	rax, .LC8[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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