_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	BYTE PTR -1[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	je	.L3
	mov	DWORD PTR -8[rbp], 1
	jmp	.L4
	xor	BYTE PTR -1[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	cmp	DWORD PTR -8[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jne	.L7
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L8
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 2
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L6
	cmp	BYTE PTR -1[rbp], 0
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L10
	jmp	.L11
	mov	DWORD PTR -12[rbp], 1
	jmp	.L12
	xor	BYTE PTR -1[rbp], 1
	cmp	BYTE PTR -1[rbp], 0
	je	.L13
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L14
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L15
	mov	esi, 10
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -16[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L16
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