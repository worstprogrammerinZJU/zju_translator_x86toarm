main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	WORD PTR -2[rbp], 0
	lea	rax, -14[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERs@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERs@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rdx, -128[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERs@PLT
	add	DWORD PTR -8[rbp], 1
	movzx	eax, WORD PTR -14[rbp]
	cwde
	cmp	DWORD PTR -8[rbp], eax
	jl	.L3
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	edx, WORD PTR -128[rbp+rax*2]
	movzx	eax, WORD PTR -16[rbp]
	cwde
	sub	eax, 1
	cdqe
	movzx	eax, WORD PTR -128[rbp+rax*2]
	cmp	dx, ax
	jl	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, WORD PTR -128[rbp+rax*2]
	test	ax, ax
	jle	.L5
	movzx	eax, WORD PTR -2[rbp]
	add	eax, 1
	mov	WORD PTR -2[rbp], ax
	add	DWORD PTR -12[rbp], 1
	movzx	eax, WORD PTR -14[rbp]
	cwde
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	movsx	eax, WORD PTR -2[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEs@PLT
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