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
	sub	rsp, 80
	call	_Z5setupv
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	jmp	.L3
	lea	rax, -56[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -72[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 1
	mov	QWORD PTR -16[rbp], rax
	jmp	.L4
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -32[rbp], rax
	mov	rcx, QWORD PTR -32[rbp]
	movabs	rdx, 6148914691236517206
	mov	rax, rcx
	imul	rdx
	sar	rcx, 63
	mov	rax, rdx
	sub	rax, rcx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	imul	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	imul	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	imul	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR -32[rbp]
	movabs	rdx, 6148914691236517206
	mov	rax, rcx
	imul	rdx
	mov	rsi, rcx
	sar	rsi, 63
	mov	rax, rdx
	sub	rax, rsi
	mov	rdx, rax
	add	rdx, rdx
	add	rdx, rax
	mov	rax, rcx
	sub	rax, rdx
	test	rax, rax
	jle	.L5
	mov	rax, QWORD PTR -64[rbp]
	add	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR -32[rbp]
	movabs	rdx, 6148914691236517206
	mov	rax, rcx
	imul	rdx
	mov	rsi, rcx
	sar	rsi, 63
	mov	rax, rdx
	sub	rax, rsi
	mov	rdx, rax
	add	rdx, rdx
	add	rdx, rax
	mov	rax, rcx
	sub	rax, rdx
	cmp	rax, 1
	jle	.L6
	mov	rax, QWORD PTR -72[rbp]
	add	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	cmp	QWORD PTR -24[rbp], rax
	jl	.L7
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L4
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	cmp	QWORD PTR -16[rbp], rax
	jg	.L8
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -48[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L9
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