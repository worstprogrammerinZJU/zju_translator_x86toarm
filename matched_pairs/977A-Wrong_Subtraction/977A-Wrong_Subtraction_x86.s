main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 2
	mov	rsi, rcx
	sar	rsi, 63
	sub	rax, rsi
	mov	rdx, rax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	sub	rcx, rax
	mov	rdx, rcx
	test	rdx, rdx
	jne	.L3
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 2
	sar	rcx, 63
	mov	rdx, rcx
	sub	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	jmp	.L4
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, 1
	mov	QWORD PTR -16[rbp], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L5
	mov	rax, QWORD PTR -16[rbp]
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