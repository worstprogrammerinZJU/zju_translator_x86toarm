main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 1
	jmp	.L3
	lea	rax, -64[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	DWORD PTR -20[rbp], eax
	setne	al
	test	al, al
	je	.L4
	lea	rax, -64[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 8
	jle	.L5
	mov	DWORD PTR -24[rbp], 97
	jmp	.L6
	mov	eax, DWORD PTR -24[rbp]
	mov	ebx, eax
	lea	rax, -64[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	setne	al
	test	al, al
	je	.L7
	mov	eax, DWORD PTR -24[rbp]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	mov	rdi, rbx
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 104
	jle	.L8
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -28[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L9
	lea	rax, -64[rbp]
	mov	rdi, rax
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