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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
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
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 1
	jne	.L3
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L4
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -28[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	cdq
	idiv	ecx
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L7
	lea	rdx, -28[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -8[rbp], eax
	lea	rdx, -8[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -28[rbp]
	imul	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L8
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L9
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L12
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L13
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
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