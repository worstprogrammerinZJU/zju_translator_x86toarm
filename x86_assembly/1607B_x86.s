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
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	jmp	.L2
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -16[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L3
	mov	rax, QWORD PTR -24[rbp]
	and	eax, 3
	test	rax, rax
	jne	.L4
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rax, QWORD PTR -24[rbp]
	cqo
	shr	rdx, 62
	add	rax, rdx
	and	eax, 3
	sub	rax, rdx
	cmp	rax, 1
	jne	.L6
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	cqo
	shr	rdx, 62
	add	rax, rdx
	and	eax, 3
	sub	rax, rdx
	cmp	rax, 2
	jne	.L7
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rcx, -1[rdx]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rax, QWORD PTR -24[rbp]
	cqo
	shr	rdx, 62
	add	rax, rdx
	and	eax, 3
	sub	rax, rdx
	cmp	rax, 3
	jne	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rcx, -2[rdx]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 1
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rax, QWORD PTR -24[rbp]
	and	eax, 3
	test	rax, rax
	jne	.L9
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rax, QWORD PTR -24[rbp]
	cqo
	shr	rdx, 62
	add	rax, rdx
	and	eax, 3
	sub	rax, rdx
	cmp	rax, 1
	jne	.L10
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rax, QWORD PTR -24[rbp]
	cqo
	shr	rdx, 62
	add	rax, rdx
	and	eax, 3
	sub	rax, rdx
	cmp	rax, 2
	jne	.L11
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L2
	mov	rax, QWORD PTR -24[rbp]
	cqo
	shr	rdx, 62
	add	rax, rdx
	and	eax, 3
	sub	rax, rdx
	cmp	rax, 3
	jne	.L2
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -2[rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, -1[rax]
	mov	rax, rdx
	sub	rax, rcx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -8[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L12
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
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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