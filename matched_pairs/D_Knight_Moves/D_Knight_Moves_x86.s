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
	lea	rax, -5[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 103
	jg	.L3
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 6
	jg	.L3
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 103
	jg	.L4
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 2
	jle	.L4
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 97
	jle	.L5
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 6
	jg	.L5
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 97
	jle	.L6
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 2
	jle	.L6
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 102
	jg	.L7
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 7
	jg	.L7
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 102
	jg	.L8
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jle	.L8
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 98
	jle	.L9
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 7
	jg	.L9
	add	DWORD PTR -4[rbp], 1
	movzx	eax, BYTE PTR -5[rbp]
	cmp	al, 98
	jle	.L10
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 1
	jle	.L10
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L14
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L14
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