main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 200
	lea	rax, -164[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	lea	rax, -168[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -208[rbp]
	mov	rdi, rax
	lea	rax, -208[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L3
	mov	eax, 4
	sub	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -168[rbp]
	lea	edx, -4[rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	movsx	rdx, eax
	lea	rax, -160[rbp]
	lea	rsi, -208[rbp]
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	eax, 4
	sub	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -168[rbp]
	lea	edx, -4[rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	movsx	rdx, eax
	lea	rax, -96[rbp]
	lea	rsi, -208[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	lea	rsi, -208[rbp]
	mov	rcx, rdx
	mov	edx, 0
	mov	rdi, rax
	lea	rax, -128[rbp]
	lea	rdx, -96[rbp]
	lea	rcx, -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -128[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	ebx, eax
	lea	rax, -128[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	test	bl, bl
	je	.L4
	mov	DWORD PTR -24[rbp], 1
	add	DWORD PTR -28[rbp], 1
	cmp	DWORD PTR -28[rbp], 4
	jle	.L5
	cmp	DWORD PTR -24[rbp], 1
	jne	.L6
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L7
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -208[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L8
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	BYTE PTR -17[rbp], 0
	mov	BYTE PTR -17[rbp], 1
	cmp	BYTE PTR -17[rbp], 0
	je	.L11
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	add	rax, rbx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -32[rbp], rax
	jbe	.L12
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -32[rbp], rax
	ja	.L12
	mov	eax, 1
	jmp	.L13
	mov	eax, 0
	test	al, al
	je	.L11
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L14
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
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