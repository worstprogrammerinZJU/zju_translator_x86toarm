main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -20[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 2
	jle	.L4
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 1
	jne	.L5
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	je	.L6
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	je	.L6
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 1
	jne	.L2
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jne	.L2
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -24[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
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
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
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