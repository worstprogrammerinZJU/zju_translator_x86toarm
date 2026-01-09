main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L2
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	jmp	.L3
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	add	rax, 1
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
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
	jne	.L7
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L7
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