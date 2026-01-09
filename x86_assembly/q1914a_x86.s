main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 184
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -192[rbp]
	mov	rdi, rax
	lea	rax, -192[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], 0
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 25
	jle	.L4
	mov	BYTE PTR -25[rbp], 65
	jmp	.L5
	mov	DWORD PTR -32[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -25[rbp], al
	sete	al
	test	al, al
	je	.L7
	movsx	eax, BYTE PTR -25[rbp]
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -160[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -160[rbp+rax*4], edx
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	movsx	rbx, eax
	lea	rax, -192[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L8
	movzx	eax, BYTE PTR -25[rbp]
	add	eax, 1
	mov	BYTE PTR -25[rbp], al
	cmp	BYTE PTR -25[rbp], 90
	jle	.L9
	mov	QWORD PTR -40[rbp], 0
	mov	BYTE PTR -45[rbp], 65
	mov	DWORD PTR -44[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	cmp	DWORD PTR -44[rbp], eax
	jge	.L11
	add	QWORD PTR -40[rbp], 1
	add	DWORD PTR -44[rbp], 1
	cmp	DWORD PTR -44[rbp], 25
	jle	.L12
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -192[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L13
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
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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