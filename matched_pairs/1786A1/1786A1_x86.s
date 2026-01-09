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
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	BYTE PTR -25[rbp], 1
	jmp	.L3
	cmp	BYTE PTR -25[rbp], 0
	je	.L4
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jle	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	add	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	xor	BYTE PTR -25[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jle	.L9
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	add	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jle	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	add	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	xor	BYTE PTR -25[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jg	.L13
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -32[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L14
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
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
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