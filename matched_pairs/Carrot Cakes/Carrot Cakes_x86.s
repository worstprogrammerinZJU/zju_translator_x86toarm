main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L2
	mov	eax, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, edx
	mov	DWORD PTR -4[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L4
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L9
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L9
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