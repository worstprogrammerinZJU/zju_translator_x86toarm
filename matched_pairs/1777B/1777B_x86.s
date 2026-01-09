_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -32[rbp]
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	QWORD PTR -16[rbp], 1
	jmp	.L3
	mov	rcx, QWORD PTR -8[rbp]
	movabs	rdx, -8543223828751151131
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 29
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 1000000007
	mov	rax, rcx
	sub	rax, rdx
	imul	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	movabs	rdx, -8543223828751151131
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 29
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	imul	rdx, rax, 1000000007
	mov	rax, rcx
	sub	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -32[rbp]
	cmp	QWORD PTR -16[rbp], rax
	jle	.L4
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L5
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