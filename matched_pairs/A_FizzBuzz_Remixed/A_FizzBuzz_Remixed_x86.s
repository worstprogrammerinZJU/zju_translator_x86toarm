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
	sub	rsp, 32
	call	_Z5setupv
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L3
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	sar	edx, 3
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	cdqe
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	sar	edx, 3
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	ecx, edx
	sal	ecx, 4
	sub	ecx, edx
	sub	eax, ecx
	mov	edx, eax
	movsx	rax, edx
	mov	QWORD PTR -24[rbp], rax
	mov	QWORD PTR -16[rbp], 0
	jmp	.L4
	mov	rsi, QWORD PTR -16[rbp]
	movabs	rdx, 6148914691236517206
	mov	rax, rsi
	imul	rdx
	mov	rax, rsi
	sar	rax, 63
	mov	rcx, rdx
	sub	rcx, rax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sub	rsi, rax
	mov	rcx, rsi
	mov	rsi, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rsi
	imul	rdx
	mov	rax, rdx
	sar	rax
	mov	rdx, rsi
	sar	rdx, 63
	sub	rax, rdx
	mov	rdx, rax
	sal	rdx, 2
	add	rdx, rax
	mov	rax, rsi
	sub	rax, rdx
	cmp	rcx, rax
	jne	.L5
	add	QWORD PTR -8[rbp], 1
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -24[rbp]
	jle	.L6
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -28[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L7
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