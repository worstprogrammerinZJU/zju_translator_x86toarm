main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	BYTE PTR -1[rbp], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 2019
	jle	.L3
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -2117716547
	shr	rdx, 32
	add	edx, eax
	sar	edx, 10
	sar	eax, 31
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -2117716547
	shr	rdx, 32
	add	edx, eax
	sar	edx, 10
	mov	esi, eax
	sar	esi, 31
	sub	edx, esi
	imul	esi, edx, 2020
	sub	eax, esi
	mov	edx, eax
	cmp	ecx, edx
	jl	.L3
	mov	BYTE PTR -1[rbp], 1
	cmp	BYTE PTR -1[rbp], 0
	je	.L4
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L2
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -12[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L6
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