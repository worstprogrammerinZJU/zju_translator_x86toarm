	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	ecx, DWORD PTR -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r8d, ecx
	mov	rcx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rax, QWORD PTR strtol@GOTPCREL[rip]
	mov	rdi, rax
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 136
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L4
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	lea	rax, -112[rbp]
	mov	esi, edx
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 48
	sete	al
	test	al, al
	je	.L6
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	lea	rax, -112[rbp]
	mov	esi, edx
	mov	rdi, rax
	jmp	.L16
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L8
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rbx, eax
	lea	rax, -144[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L9
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -28[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	lea	rax, -80[rbp]
	mov	esi, edx
	mov	rdi, rax
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -144[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L11
	lea	rax, -112[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	DWORD PTR -40[rbp], eax
	lea	rax, -80[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L12
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L13
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -48[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -48[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L14
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	call	__errno_location@PLT
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	call	__errno_location@PLT
	mov	DWORD PTR [rax], 0
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	call	__errno_location@PLT
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L20
	call	__errno_location@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, -2147483649
	cmp	QWORD PTR -8[rbp], rax
	jle	.L22
	mov	eax, 2147483648
	cmp	QWORD PTR -8[rbp], rax
	jl	.L23
	mov	eax, 1
	jmp	.L24
	mov	eax, 0
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	DWORD PTR -84[rbp], r8d
	lea	rax, -44[rbp]
	mov	rdi, rax
	mov	r8, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -84[rbp]
	lea	rcx, -40[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	r8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	cmp	QWORD PTR -72[rbp], rax
	jne	.L27
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	__errno_location@PLT
	mov	eax, DWORD PTR [rax]
	cmp	eax, 34
	je	.L28
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	test	al, al
	je	.L29
	mov	eax, 1
	jmp	.L30
	mov	eax, 0
	test	al, al
	je	.L31
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR -28[rbp], eax
	cmp	QWORD PTR -80[rbp], 0
	je	.L32
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR -72[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	QWORD PTR [rax], rdx
	mov	ebx, DWORD PTR -28[rbp]
	lea	rax, -44[rbp]
	mov	rdi, rax
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L36
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L36
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