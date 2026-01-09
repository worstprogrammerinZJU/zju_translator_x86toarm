main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L4
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	je	.L5
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	test	al, al
	je	.L8
	add	DWORD PTR -8[rbp], 2
	add	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	test	al, al
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L12
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L12
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	je	.L12
	mov	eax, 1
	jmp	.L13
	mov	eax, 0
	test	al, al
	je	.L14
	add	DWORD PTR -8[rbp], 2
	add	DWORD PTR -4[rbp], 2
	jmp	.L3
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L15
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	jne	.L15
	mov	eax, DWORD PTR -84[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	je	.L15
	mov	eax, 1
	jmp	.L16
	mov	eax, 0
	test	al, al
	je	.L17
	add	DWORD PTR -8[rbp], 2
	add	DWORD PTR -4[rbp], 2
	jmp	.L3
	add	DWORD PTR -4[rbp], 1
	nop
	mov	eax, DWORD PTR -84[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L19
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -48[rbp]
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
	jne	.L23
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L23
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