	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L2
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L5
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L6
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, 1
	mov	rcx, QWORD PTR -56[rbp]
	cqo
	idiv	rcx
	mov	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -16[rbp]
	cqo
	idiv	rcx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 1
	imul	rax, QWORD PTR -32[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 1
	imul	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	neg	rax
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -56[rbp]
	imul	rax, rdx
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
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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