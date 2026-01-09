_Z5primeii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	cmp	DWORD PTR -8[rbp], 1
	je	.L11
	cmp	DWORD PTR -8[rbp], 0
	je	.L11
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], 2
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	cmp	DWORD PTR -4[rbp], 1
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L5
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L10
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 1
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z5primeii
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