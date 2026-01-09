main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
	lea	rax, -29[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	movzx	edx, BYTE PTR -29[rbp]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	add	rax, rax
	add	rax, rbp
	add	rax, rsi
	sub	rax, 144
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 9
	jle	.L5
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 9
	jle	.L6
	mov	DWORD PTR -20[rbp], 0
	jmp	.L7
	mov	DWORD PTR -24[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rbp
	add	rax, rcx
	sub	rax, 144
	movzx	eax, BYTE PTR [rax]
	cmp	al, 88
	jne	.L9
	cmp	DWORD PTR -20[rbp], 3
	jle	.L10
	cmp	DWORD PTR -20[rbp], 5
	jg	.L10
	cmp	DWORD PTR -24[rbp], 3
	jle	.L10
	cmp	DWORD PTR -24[rbp], 5
	jg	.L10
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -20[rbp], 2
	jle	.L11
	cmp	DWORD PTR -20[rbp], 6
	jg	.L11
	cmp	DWORD PTR -24[rbp], 2
	jle	.L11
	cmp	DWORD PTR -24[rbp], 6
	jg	.L11
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -20[rbp], 1
	jle	.L12
	cmp	DWORD PTR -20[rbp], 7
	jg	.L12
	cmp	DWORD PTR -24[rbp], 1
	jle	.L12
	cmp	DWORD PTR -24[rbp], 7
	jg	.L12
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -20[rbp], 0
	jle	.L13
	cmp	DWORD PTR -20[rbp], 8
	jg	.L13
	cmp	DWORD PTR -24[rbp], 0
	jle	.L13
	cmp	DWORD PTR -24[rbp], 8
	jg	.L13
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -20[rbp], 0
	js	.L9
	cmp	DWORD PTR -20[rbp], 9
	jg	.L9
	cmp	DWORD PTR -24[rbp], 0
	js	.L9
	cmp	DWORD PTR -24[rbp], 9
	jg	.L9
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 9
	jle	.L14
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 9
	jle	.L15
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
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