main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1282606671
	shr	rdx, 32
	add	edx, eax
	sar	edx, 8
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	imul	edx, eax, -365
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	movsx	rax, edx
	imul	rax, rax, -1282606671
	shr	rax, 32
	add	eax, edx
	sar	eax, 8
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 365
	mov	eax, edx
	sub	eax, ecx
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -12[rbp], edx
	mov	edx, DWORD PTR -12[rbp]
	imul	edx, edx, 30
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jns	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	cmp	DWORD PTR -8[rbp], 0
	jns	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	cmp	DWORD PTR -12[rbp], 0
	jns	.L3
	mov	DWORD PTR -12[rbp], 0
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
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
	jne	.L8
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L8
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