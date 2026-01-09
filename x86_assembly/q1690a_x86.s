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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -20[rbp]
	movsx	rax, edx
	imul	rax, rax, 1431655766
	shr	rax, 32
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	add	ecx, ecx
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	imul	rcx, rcx, 1431655766
	shr	rcx, 32
	sar	eax, 31
	mov	esi, eax
	mov	eax, ecx
	sub	eax, esi
	add	eax, 1
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rcx, eax
	imul	rcx, rcx, 1431655766
	shr	rcx, 32
	sar	eax, 31
	mov	esi, eax
	mov	eax, ecx
	sub	eax, esi
	sub	eax, 1
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	edx, DWORD PTR -20[rbp]
	movsx	rax, edx
	imul	rax, rax, 1431655766
	shr	rax, 32
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	add	ecx, ecx
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	cmp	eax, 1
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 2
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	edx, DWORD PTR -20[rbp]
	movsx	rax, edx
	imul	rax, rax, 1431655766
	shr	rax, 32
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	add	ecx, ecx
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	cmp	eax, 2
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 2
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L6
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
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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