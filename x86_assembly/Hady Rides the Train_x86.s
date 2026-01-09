main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, 3[rax]
	test	rax, rax
	cmovs	rax, rdx
	sar	rax, 2
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, 1
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	cqo
	shr	rdx, 63
	add	rax, rdx
	and	eax, 1
	sub	rax, rdx
	cmp	rax, 1
	jne	.L2
	mov	rax, QWORD PTR -32[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L3
	mov	rax, QWORD PTR -32[rbp]
	and	eax, 3
	test	rax, rax
	jne	.L4
	mov	DWORD PTR -4[rbp], 3
	jmp	.L5
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	rax, QWORD PTR -24[rbp]
	and	eax, 3
	test	rax, rax
	jne	.L6
	mov	DWORD PTR -4[rbp], 2
	jmp	.L5
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	rax, QWORD PTR -32[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L7
	mov	rax, QWORD PTR -32[rbp]
	and	eax, 3
	test	rax, rax
	jne	.L8
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	DWORD PTR -4[rbp], 2
	jmp	.L5
	mov	rax, QWORD PTR -24[rbp]
	and	eax, 3
	test	rax, rax
	jne	.L9
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	DWORD PTR -4[rbp], 3
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
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
	jne	.L13
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L13
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