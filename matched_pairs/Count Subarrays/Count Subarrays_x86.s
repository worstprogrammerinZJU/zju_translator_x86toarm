main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rdx, -448[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	cmp	DWORD PTR -16[rbp], eax
	jg	.L14
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -448[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L10
	jmp	.L9
	nop
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -24[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L12
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