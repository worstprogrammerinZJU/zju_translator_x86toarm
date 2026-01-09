_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	BYTE PTR -9[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L6
	mov	BYTE PTR -9[rbp], 0
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L7
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jle	.L9
	mov	BYTE PTR -9[rbp], 0
	cmp	BYTE PTR -9[rbp], 0
	je	.L10
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L2
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
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