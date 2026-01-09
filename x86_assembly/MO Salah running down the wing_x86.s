main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	jmp	.L2
	mov	QWORD PTR -8[rbp], 0
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
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rdx
	mov	rdx, QWORD PTR -32[rbp]
	sub	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	test	rax, rax
	jne	.L3
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jle	.L3
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L2
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jge	.L5
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L2
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -16[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L6
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