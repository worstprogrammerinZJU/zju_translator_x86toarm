_Z5setupv:
	endbr64
	push	rbp
	mov	rbp, rsp
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
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	_Z5setupv
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L3
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	je	.L6
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	je	.L5
	cmp	DWORD PTR -8[rbp], 1
	je	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	cmp	DWORD PTR -8[rbp], eax
	je	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L8
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L10
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	jmp	.L3
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -12[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L11
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
	jne	.L15
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L15
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