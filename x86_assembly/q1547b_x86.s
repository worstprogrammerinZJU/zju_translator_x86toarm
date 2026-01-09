main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	lea	rax, -56[rbp]
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
	jmp	.L3
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 97
	sete	al
	test	al, al
	je	.L4
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -28[rbp], 1
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	movsx	rbx, eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L5
	cmp	DWORD PTR -28[rbp], 1
	jne	.L6
	lea	rax, -96[rbp]
	mov	rdi, rax
	cmp	rax, 1
	je	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	test	al, al
	je	.L8
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	DWORD PTR -44[rbp], 0
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -48[rbp], eax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	ebx, al
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	eax, ebx
	sub	eax, edx
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L10
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -48[rbp], eax
	sub	DWORD PTR -36[rbp], 1
	jmp	.L11
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	ebx, al
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	eax, ebx
	sub	eax, edx
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L12
	mov	eax, DWORD PTR -40[rbp]
	add	eax, 1
	mov	DWORD PTR -48[rbp], eax
	add	DWORD PTR -40[rbp], 1
	jmp	.L11
	mov	DWORD PTR -44[rbp], 1
	jmp	.L13
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	movsx	rbx, eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	sub	rax, 1
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L14
	cmp	DWORD PTR -44[rbp], 1
	jne	.L15
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L16
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L16
	lea	rax, -96[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L17
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L16
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -56[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L18
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	eax, eax
	sete	al
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L24
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L24
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