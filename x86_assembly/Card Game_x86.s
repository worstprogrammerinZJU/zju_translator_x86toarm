main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
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
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jle	.L3
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jg	.L4
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L5
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jg	.L4
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jle	.L6
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	movzx	eax, al
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L8
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jg	.L9
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jl	.L10
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jg	.L9
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L11
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L11
	mov	eax, 1
	jmp	.L12
	mov	eax, 0
	movzx	eax, al
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -8[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L13
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