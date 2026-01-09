main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -5[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 99
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 111
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 100
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 101
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 102
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 115
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 114
	jne	.L4
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L2
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -4[rbp], edx
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