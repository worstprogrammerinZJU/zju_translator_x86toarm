main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L2
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	je	.L4
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	je	.L5
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L5
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
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
	jne	.L9
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L9
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