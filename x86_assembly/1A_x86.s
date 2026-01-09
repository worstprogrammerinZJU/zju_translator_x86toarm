_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L2
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	cqo
	idiv	rcx
	jmp	.L3
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	cqo
	idiv	rcx
	add	rax, 1
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -40[rbp]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L4
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	cqo
	idiv	rsi
	jmp	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR -40[rbp]
	cqo
	idiv	rdi
	add	rax, 1
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
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