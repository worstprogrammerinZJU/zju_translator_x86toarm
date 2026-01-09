main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -44[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	BYTE PTR -21[rbp], 1
	mov	DWORD PTR -28[rbp], 0
	jmp	.L3
	mov	BYTE PTR -29[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	DWORD PTR -28[rbp], eax
	sete	al
	test	al, al
	je	.L5
	mov	BYTE PTR -29[rbp], 1
	jmp	.L6
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	movsx	rbx, eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L7
	movzx	eax, BYTE PTR -29[rbp]
	xor	eax, 1
	test	al, al
	je	.L8
	mov	BYTE PTR -21[rbp], 0
	jmp	.L9
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jle	.L10
	cmp	BYTE PTR -21[rbp], 0
	je	.L11
	add	DWORD PTR -20[rbp], 1
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -40[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -40[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L12
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
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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