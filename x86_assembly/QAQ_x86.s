main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 81
	setne	al
	test	al, al
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	setne	al
	test	al, al
	jne	.L16
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 81
	setne	al
	test	al, al
	jne	.L17
	add	DWORD PTR -4[rbp], 1
	jmp	.L10
	nop
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L11
	jmp	.L7
	nop
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jl	.L12
	jmp	.L4
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L20
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L20
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