_Z5absoli:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 0
	js	.L2
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	neg	eax
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 136
	mov	DWORD PTR -28[rbp], 0
	jmp	.L5
	mov	DWORD PTR -32[rbp], 0
	jmp	.L6
	lea	rcx, -144[rbp]
	mov	eax, DWORD PTR -32[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -32[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	mov	eax, DWORD PTR -144[rbp+rax*4]
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -32[rbp], 1
	cmp	DWORD PTR -32[rbp], 4
	jle	.L8
	add	DWORD PTR -28[rbp], 1
	cmp	DWORD PTR -28[rbp], 4
	jle	.L9
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	mov	edi, eax
	call	_Z5absoli
	mov	ebx, eax
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 2
	mov	edi, eax
	call	_Z5absoli
	add	eax, ebx
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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