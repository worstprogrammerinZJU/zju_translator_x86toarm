main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 48
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	sete	al
	test	al, al
	je	.L3
	add	DWORD PTR -20[rbp], 1
	mov	DWORD PTR -24[rbp], 0
	cmp	DWORD PTR -20[rbp], 7
	jne	.L4
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	ebx, 0
	mov	r12d, 0
	jmp	.L5
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	sete	al
	test	al, al
	je	.L4
	mov	DWORD PTR -20[rbp], 0
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 7
	jne	.L4
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	ebx, 0
	mov	r12d, 0
	jmp	.L5
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	r12, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	r12, rax
	setb	al
	test	al, al
	jne	.L6
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	r12d, 1
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	r12d, 1
	jne	.L8
	mov	ebx, 0
	mov	eax, ebx
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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