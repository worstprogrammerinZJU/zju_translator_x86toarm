main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 80
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	tolower@PLT
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	tolower@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L3
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ebx, 0
	mov	r12d, 0
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jge	.L5
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ebx, 0
	mov	r12d, 0
	jmp	.L4
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	r12, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	r12, rax
	setbe	al
	test	al, al
	jne	.L6
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	r12d, 1
	lea	rax, -96[rbp]
	mov	rdi, rax
	cmp	r12d, 1
	jne	.L7
	mov	r12d, 1
	jmp	.L8
	mov	r12d, 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	r12d, 1
	jne	.L10
	mov	ebx, 0
	mov	eax, ebx
	add	rsp, 80
	pop	rbx
	pop	r12
	pop	rbp
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