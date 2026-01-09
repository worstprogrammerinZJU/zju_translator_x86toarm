main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	lea	rax, -60[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	QWORD PTR -8[rbp], 1
	mov	QWORD PTR -16[rbp], 1
	mov	DWORD PTR -36[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rdx, QWORD PTR -16[rbp]
	imul	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -64[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jg	.L3
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rdx, QWORD PTR -8[rbp]
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jle	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	QWORD PTR -32[rbp], 1
	mov	DWORD PTR -40[rbp], 2
	jmp	.L5
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rdx, QWORD PTR -24[rbp]
	imul	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rdx, QWORD PTR -32[rbp]
	imul	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	add	DWORD PTR -40[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	mov	edx, DWORD PTR -64[rbp]
	sub	eax, edx
	cmp	DWORD PTR -40[rbp], eax
	jle	.L6
	mov	rax, QWORD PTR -16[rbp]
	cqo
	idiv	QWORD PTR -24[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	cqo
	idiv	QWORD PTR -32[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
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