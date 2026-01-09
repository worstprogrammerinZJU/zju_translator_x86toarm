main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 184
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
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
	mov	DWORD PTR -28[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -39[rbp], al
	movsx	eax, BYTE PTR -39[rbp]
	sub	eax, 97
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	movsx	edx, BYTE PTR -39[rbp]
	lea	ecx, -97[rdx]
	lea	edx, 1[rax]
	movsx	rax, ecx
	mov	DWORD PTR -160[rbp+rax*4], edx
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -192[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L6
	mov	DWORD PTR -32[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	cmp	eax, 2
	jne	.L8
	mov	eax, DWORD PTR -32[rbp]
	add	eax, 97
	mov	BYTE PTR -38[rbp], al
	movsx	eax, BYTE PTR -38[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	movsx	eax, BYTE PTR -38[rbp]
	mov	esi, eax
	mov	rdi, rdx
	add	DWORD PTR -32[rbp], 1
	cmp	DWORD PTR -32[rbp], 25
	jle	.L9
	mov	DWORD PTR -36[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	eax, DWORD PTR -160[rbp+rax*4]
	cmp	eax, 1
	jne	.L11
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 97
	mov	BYTE PTR -37[rbp], al
	movsx	eax, BYTE PTR -37[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -36[rbp], 1
	cmp	DWORD PTR -36[rbp], 25
	jle	.L12
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -192[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
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