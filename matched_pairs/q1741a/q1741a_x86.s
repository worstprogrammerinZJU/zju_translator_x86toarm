main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 88
	sete	al
	test	al, al
	je	.L4
	add	DWORD PTR -24[rbp], 1
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	movsx	rbx, eax
	lea	rax, -112[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L5
	mov	DWORD PTR -36[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 88
	sete	al
	test	al, al
	je	.L7
	add	DWORD PTR -28[rbp], 1
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	movsx	rbx, eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L8
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L9
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 76
	jne	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	test	al, al
	je	.L11
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L12
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jge	.L14
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L13
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L15
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L15
	mov	eax, 1
	jmp	.L16
	mov	eax, 0
	test	al, al
	je	.L17
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L18
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jge	.L19
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jne	.L13
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L20
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 77
	jne	.L20
	mov	eax, 1
	jmp	.L21
	mov	eax, 0
	test	al, al
	je	.L22
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 76
	sete	al
	test	al, al
	je	.L23
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 77
	jne	.L24
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rdx, -1[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	jne	.L24
	mov	eax, 1
	jmp	.L25
	mov	eax, 0
	test	al, al
	je	.L26
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L27
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
	jne	.L31
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L31
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