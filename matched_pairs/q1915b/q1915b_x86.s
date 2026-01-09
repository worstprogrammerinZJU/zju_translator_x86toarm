main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	sete	al
	test	al, al
	je	.L5
	mov	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 66
	sete	al
	test	al, al
	je	.L6
	mov	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 67
	sete	al
	test	al, al
	je	.L7
	mov	DWORD PTR -24[rbp], 1
	add	DWORD PTR -28[rbp], 1
	cmp	DWORD PTR -28[rbp], 2
	jle	.L8
	cmp	DWORD PTR -16[rbp], 1
	jne	.L9
	cmp	DWORD PTR -20[rbp], 1
	jne	.L10
	cmp	DWORD PTR -24[rbp], 1
	je	.L11
	mov	eax, 67
	jmp	.L14
	mov	eax, 80
	jmp	.L14
	mov	eax, 66
	jmp	.L14
	mov	eax, 65
	mov	BYTE PTR -29[rbp], al
	cmp	BYTE PTR -29[rbp], 80
	je	.L15
	movzx	eax, BYTE PTR -29[rbp]
	mov	BYTE PTR -5[rbp], al
	lea	rax, -80[rbp]
	mov	rdi, rax
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 2
	jle	.L16
	movsx	eax, BYTE PTR -5[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L17
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
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
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