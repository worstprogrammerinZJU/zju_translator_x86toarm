main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	cqo
	shr	rdx, 63
	add	rax, rdx
	and	eax, 1
	sub	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	test	rax, rax
	jle	.L3
	cmp	QWORD PTR -32[rbp], 0
	jne	.L4
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	jmp	.L5
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	sub	rax, rdx
	imul	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	jmp	.L5
	mov	QWORD PTR -16[rbp], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L6
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
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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