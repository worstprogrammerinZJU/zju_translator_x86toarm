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
	push	rbx
	sub	rsp, 72
	call	_Z5setupv
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -36[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jle	.L3
	lea	rdx, -36[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	sete	al
	test	al, al
	jne	.L18
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	sete	al
	test	al, al
	je	.L6
	cmp	DWORD PTR -24[rbp], 0
	jle	.L7
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 98
	jne	.L7
	mov	eax, 1
	jmp	.L8
	mov	eax, 0
	test	al, al
	je	.L9
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jle	.L19
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 97
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	add	DWORD PTR -20[rbp], 1
	jmp	.L6
	cmp	DWORD PTR -24[rbp], 0
	jle	.L11
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 97
	jne	.L11
	mov	eax, 1
	jmp	.L12
	mov	eax, 0
	test	al, al
	je	.L13
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jle	.L20
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 98
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -20[rbp], 1
	jmp	.L6
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jle	.L15
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 97
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	add	DWORD PTR -20[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -36[rbp]
	test	eax, eax
	jle	.L6
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 98
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -20[rbp], 1
	jmp	.L6
	nop
	jmp	.L6
	nop
	jmp	.L6
	nop
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jl	.L16
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ebx, 0
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	lea	rax, -4[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L26
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L26
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