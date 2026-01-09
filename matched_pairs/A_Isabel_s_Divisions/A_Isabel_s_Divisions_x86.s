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
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
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
	sub	rsp, 88
	call	_Z5setupv
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -80[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -88[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	jmp	.L5
	lea	rax, -88[rbp]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -33[rbp], al
	cmp	BYTE PTR -33[rbp], 48
	je	.L6
	movsx	eax, BYTE PTR -33[rbp]
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -24[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L6
	add	DWORD PTR -20[rbp], 1
	lea	rax, -88[rbp]
	mov	rdi, rax
	lea	rdx, -96[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L7
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
	jne	.L12
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
	jle	.L14
	mov	eax, 2147483648
	cmp	QWORD PTR -8[rbp], rax
	jl	.L15
	mov	eax, 1
	jmp	.L16
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
	jne	.L19
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	__errno_location@PLT
	mov	eax, DWORD PTR [rax]
	cmp	eax, 34
	je	.L20
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	test	al, al
	je	.L21
	mov	eax, 1
	jmp	.L22
	mov	eax, 0
	test	al, al
	je	.L23
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR -28[rbp], eax
	cmp	QWORD PTR -80[rbp], 0
	je	.L24
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
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setne	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
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