main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -48[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L2
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jle	.L3
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	lea	rax, -48[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L5
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L6
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	lea	rax, -48[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L4
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	je	.L7
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L4
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jne	.L4
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	eax, eax
	sete	al
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