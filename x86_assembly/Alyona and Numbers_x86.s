main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -16[rbp], 1
	jmp	.L2
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	mov	rsi, rcx
	sar	rsi, 63
	sub	rax, rsi
	mov	rdx, rax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	sar	rcx, 63
	mov	rdx, rcx
	sub	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	add	QWORD PTR -8[rbp], rax
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -32[rbp]
	cmp	QWORD PTR -16[rbp], rax
	jle	.L3
	mov	rax, QWORD PTR -8[rbp]
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