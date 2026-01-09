main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jle	.L3
	mov	BYTE PTR -1[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -16[rbp]
	sub	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L5
	mov	BYTE PTR -1[rbp], 1
	jmp	.L4
	mov	BYTE PTR -1[rbp], 0
	cmp	BYTE PTR -1[rbp], 0
	je	.L6
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L2
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -8[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L8
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
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
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