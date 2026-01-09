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
	mov	rax, QWORD PTR strtoll@GOTPCREL[rip]
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
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -20[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	jle	.L6
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 57
	jle	.L7
	mov	eax, 1
	jmp	.L8
	mov	eax, 0
	test	al, al
	je	.L9
	mov	eax, 0
	jmp	.L10
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L11
	mov	eax, 1
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 136
	call	_Z5setupv
	lea	rax, -128[rbp]
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -160[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	r12d, 0
	lea	rdx, -128[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	r13d, 1
	lea	rax, -96[rbp]
	mov	rdi, rax
	test	al, al
	je	.L13
	lea	rdx, -160[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	r12d, 1
	lea	rax, -64[rbp]
	mov	rdi, rax
	test	al, al
	je	.L13
	mov	ebx, 1
	jmp	.L14
	mov	ebx, 0
	test	r12b, r12b
	je	.L15
	lea	rax, -64[rbp]
	mov	rdi, rax
	test	r13b, r13b
	je	.L16
	lea	rax, -96[rbp]
	mov	rdi, rax
	test	bl, bl
	je	.L17
	lea	rax, -128[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -160[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, rbx
	sub	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	jmp	.L18
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	ebx, 0
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, ebx
	add	rsp, 136
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
	jne	.L23
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
	mov	eax, 0
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	QWORD PTR -96[rbp], rcx
	mov	DWORD PTR -100[rbp], r8d
	lea	rax, -52[rbp]
	mov	rdi, rax
	mov	r8, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -100[rbp]
	lea	rcx, -48[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	r8
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	cmp	QWORD PTR -88[rbp], rax
	jne	.L27
	mov	rax, QWORD PTR -80[rbp]
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
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -96[rbp], 0
	je	.L32
	mov	rax, QWORD PTR -48[rbp]
	sub	rax, QWORD PTR -88[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rbx, QWORD PTR -32[rbp]
	lea	rax, -52[rbp]
	mov	rdi, rax
	mov	rax, rbx
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