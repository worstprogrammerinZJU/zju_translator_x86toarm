main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -1[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, 64
	jle	.L2
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, 90
	jg	.L2
	movzx	eax, BYTE PTR -1[rbp]
	add	eax, 32
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, 95
	jle	.L3
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, 122
	jg	.L3
	movzx	eax, BYTE PTR -1[rbp]
	sub	eax, 32
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L7
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L7
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