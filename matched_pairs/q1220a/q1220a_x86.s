main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -37[rbp], al
	cmp	BYTE PTR -37[rbp], 122
	jne	.L3
	add	DWORD PTR -20[rbp], 1
	cmp	BYTE PTR -37[rbp], 110
	jne	.L4
	add	DWORD PTR -24[rbp], 1
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L5
	mov	DWORD PTR -32[rbp], 0
	jmp	.L6
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L7
	mov	DWORD PTR -36[rbp], 0
	jmp	.L8
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L9
	lea	rax, -80[rbp]
	mov	rdi, rax
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