main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
	lea	rdx, -32[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3
	jle	.L4
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	cmp	DWORD PTR -4[rbp], eax
	je	.L10
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -32[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, edx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L7
	nop
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 3
	jle	.L8
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
	jne	.L13
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L13
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