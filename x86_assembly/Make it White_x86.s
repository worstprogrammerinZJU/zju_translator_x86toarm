main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -144[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	DWORD PTR -20[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, BYTE PTR -144[rbp+rax]
	cmp	al, 66
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L7
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	movzx	eax, BYTE PTR -144[rbp+rax]
	cmp	al, 66
	jne	.L10
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L11
	sub	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 0
	jns	.L12
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
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