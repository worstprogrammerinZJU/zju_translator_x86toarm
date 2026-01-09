main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L2
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jne	.L3
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -44[rbp]
	cmp	edx, eax
	jne	.L3
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -48[rbp]
	cmp	edx, eax
	jge	.L4
	mov	edx, DWORD PTR -48[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jl	.L5
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -48[rbp]
	cmp	edx, eax
	jge	.L6
	mov	edx, DWORD PTR -48[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L6
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -40[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	add	eax, 2
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	jmp	.L8
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -40[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L8
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jne	.L9
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -48[rbp]
	cmp	edx, eax
	jne	.L9
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -44[rbp]
	cmp	edx, eax
	jge	.L10
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jl	.L11
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -44[rbp]
	cmp	edx, eax
	jge	.L12
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jge	.L12
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -36[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	add	eax, 2
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	jmp	.L8
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -36[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L8
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -36[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	mov	ebx, eax
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -40[rbp]
	sub	eax, edx
	mov	edi, eax
	call	abs@PLT
	add	eax, ebx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L14
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