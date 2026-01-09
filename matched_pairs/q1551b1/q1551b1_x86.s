main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	lea	rax, -60[rbp]
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
	mov	DWORD PTR -48[rbp], 0
	lea	rax, -96[rbp]
	mov	rdi, rax
	shr	rax
	mov	DWORD PTR -52[rbp], eax
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	BYTE PTR -33[rbp], 97
	jmp	.L3
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -33[rbp], al
	sete	al
	test	al, al
	je	.L5
	add	DWORD PTR -40[rbp], 1
	add	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L6
	cmp	DWORD PTR -40[rbp], 1
	jne	.L7
	add	DWORD PTR -32[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -40[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L9
	cmp	DWORD PTR -40[rbp], 0
	je	.L9
	add	DWORD PTR -24[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -40[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L8
	add	DWORD PTR -28[rbp], 1
	movzx	eax, BYTE PTR -33[rbp]
	add	eax, 1
	mov	BYTE PTR -33[rbp], al
	cmp	BYTE PTR -33[rbp], 122
	jle	.L10
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	add	eax, edx
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L11
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
	jne	.L15
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L15
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