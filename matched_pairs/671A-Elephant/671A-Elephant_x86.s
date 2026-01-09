main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, 4
	jle	.L2
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	mov	rdx, rax
	sal	rdx, 2
	add	rdx, rax
	mov	rax, rcx
	sub	rax, rdx
	test	rax, rax
	jne	.L3
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	sar	rcx, 63
	mov	rdx, rcx
	sub	rax, rdx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L4
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	sar	rcx, 63
	mov	rdx, rcx
	sub	rax, rdx
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L4
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, 4
	je	.L5
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, 3
	je	.L5
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, 2
	je	.L5
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, 1
	jne	.L4
	mov	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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