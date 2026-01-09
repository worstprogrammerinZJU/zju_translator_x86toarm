main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -40960[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 3184
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rcx, -44144[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rax, rsi
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 424
	add	rax, rbp
	sub	rax, 44144
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L7
	mov	DWORD PTR -24[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	sub	eax, DWORD PTR -24[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rax, rcx
	mov	eax, DWORD PTR -44144[rbp+rax*4]
	add	DWORD PTR -16[rbp], eax
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	mov	edi, eax
	call	abs@PLT
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
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