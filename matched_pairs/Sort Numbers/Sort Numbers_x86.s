main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
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
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L2
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L2
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L3
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jl	.L6
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L6
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L7
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L9
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
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