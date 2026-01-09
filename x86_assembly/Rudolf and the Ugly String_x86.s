main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 168
	lea	rax, -148[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -152[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -192[rbp]
	mov	rdi, rax
	lea	rax, -192[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -36[rbp], 0
	mov	BYTE PTR -37[rbp], 1
	jmp	.L3
	mov	BYTE PTR -37[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	lea	rsi, -192[rbp]
	mov	ecx, 4
	mov	rdi, rax
	lea	rax, -144[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	ebx, eax
	lea	rax, -144[rbp]
	mov	rdi, rax
	test	bl, bl
	je	.L5
	add	DWORD PTR -36[rbp], 2
	mov	eax, DWORD PTR -44[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 42
	mov	eax, DWORD PTR -44[rbp]
	add	eax, 3
	movsx	rdx, eax
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 42
	mov	BYTE PTR -37[rbp], 1
	jmp	.L6
	mov	r12d, 0
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	lea	rsi, -192[rbp]
	mov	ecx, 3
	mov	rdi, rax
	mov	r13d, 1
	lea	rax, -112[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L7
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	lea	rsi, -192[rbp]
	mov	ecx, 3
	mov	rdi, rax
	mov	r12d, 1
	lea	rax, -80[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L8
	mov	ebx, 1
	jmp	.L9
	mov	ebx, 0
	test	r12b, r12b
	je	.L10
	lea	rax, -80[rbp]
	mov	rdi, rax
	test	r13b, r13b
	je	.L11
	lea	rax, -112[rbp]
	mov	rdi, rax
	test	bl, bl
	je	.L6
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	add	eax, 2
	movsx	rdx, eax
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	BYTE PTR [rax], 42
	mov	BYTE PTR -37[rbp], 1
	add	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -152[rbp]
	sub	eax, 2
	cmp	DWORD PTR -44[rbp], eax
	jl	.L12
	cmp	BYTE PTR -37[rbp], 0
	jne	.L13
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -192[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -148[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -148[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L14
	mov	eax, 0
	add	rsp, 168
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
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
	jne	.L20
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L20
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