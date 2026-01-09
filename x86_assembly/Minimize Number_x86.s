main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 848
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -848[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -8[rbp], 0
	mov	BYTE PTR -9[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -848[rbp+rax*4]
	and	eax, 1
	test	eax, eax
	je	.L5
	mov	BYTE PTR -9[rbp], 0
	jmp	.L6
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L7
	cmp	BYTE PTR -9[rbp], 0
	je	.L15
	mov	DWORD PTR -20[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -848[rbp+rax*4]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	DWORD PTR -848[rbp+rax*4], edx
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L10
	add	DWORD PTR -8[rbp], 1
	jmp	.L13
	nop
	mov	eax, DWORD PTR -8[rbp]
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
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
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