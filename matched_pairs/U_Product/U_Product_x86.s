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
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	js	.L3
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	jle	.L4
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	js	.L5
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	jg	.L5
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	jle	.L7
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	jle	.L7
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	jns	.L8
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	jns	.L8
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rax, rdx
	add	rax, 1
	cqo
	shr	rdx, 63
	add	rax, rdx
	and	eax, 1
	sub	rax, rdx
	cmp	rax, 1
	jne	.L8
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	lea	rax, .LC5[rip]
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