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
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	mov	DWORD PTR -12[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L23
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jge	.L7
	cmp	DWORD PTR -12[rbp], 1
	jg	.L23
	cmp	DWORD PTR -8[rbp], 2
	jle	.L8
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L23
	cmp	DWORD PTR -8[rbp], 2
	jle	.L9
	cmp	DWORD PTR -12[rbp], 1
	jg	.L23
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L10
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L11
	cmp	DWORD PTR -8[rbp], 1
	jg	.L23
	cmp	DWORD PTR -12[rbp], 2
	jle	.L12
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L23
	cmp	DWORD PTR -12[rbp], 2
	jle	.L13
	cmp	DWORD PTR -8[rbp], 1
	jg	.L23
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jne	.L24
	jmp	.L14
	nop
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L16
	jmp	.L15
	nop
	cmp	DWORD PTR -4[rbp], 0
	jne	.L25
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L19
	jmp	.L18
	nop
	cmp	DWORD PTR -4[rbp], 0
	jne	.L2
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -16[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L21
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
	jne	.L28
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L28
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