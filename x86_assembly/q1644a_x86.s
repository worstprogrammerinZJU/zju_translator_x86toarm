main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	mov	DWORD PTR -48[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 114
	sete	al
	test	al, al
	je	.L4
	mov	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 103
	sete	al
	test	al, al
	je	.L5
	mov	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 98
	sete	al
	test	al, al
	je	.L6
	mov	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 82
	jne	.L7
	cmp	DWORD PTR -24[rbp], 1
	jne	.L7
	mov	eax, 1
	jmp	.L8
	mov	eax, 0
	test	al, al
	je	.L9
	mov	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 66
	jne	.L10
	cmp	DWORD PTR -32[rbp], 1
	jne	.L10
	mov	eax, 1
	jmp	.L11
	mov	eax, 0
	test	al, al
	je	.L12
	mov	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 71
	jne	.L13
	cmp	DWORD PTR -28[rbp], 1
	jne	.L13
	mov	eax, 1
	jmp	.L14
	mov	eax, 0
	test	al, al
	je	.L15
	mov	DWORD PTR -40[rbp], 1
	add	DWORD PTR -48[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rbx, eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L16
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -44[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	cmp	eax, 3
	jne	.L17
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L18
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L19
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
	jne	.L23
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L23
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