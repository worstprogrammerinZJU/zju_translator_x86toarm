main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	setne	al
	test	al, al
	je	.L3
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 76
	sete	al
	test	al, al
	je	.L7
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	sete	al
	test	al, al
	je	.L9
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L10
	mov	eax, DWORD PTR -4[rbp]
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
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	lea	rax, -64[rbp]
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
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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