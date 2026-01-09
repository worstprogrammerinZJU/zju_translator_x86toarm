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
_ZSt4setwi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 136
	lea	rax, -100[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L6
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -96[rbp]
	lea	rsi, -144[rbp]
	mov	ecx, 2
	mov	edx, 0
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	DWORD PTR -28[rbp], eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	lea	rsi, -144[rbp]
	mov	ecx, 2
	mov	edx, 3
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	mov	DWORD PTR -32[rbp], eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jne	.L7
	mov	DWORD PTR -24[rbp], 12
	cmp	DWORD PTR -20[rbp], 60
	jne	.L8
	mov	DWORD PTR -20[rbp], 0
	mov	edi, 2
	call	_ZSt4setwi
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rbx, rax
	mov	edi, 48
	mov	esi, eax
	mov	rdi, rbx
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	mov	edi, 2
	call	_ZSt4setwi
	mov	esi, eax
	mov	rdi, rbx
	mov	rbx, rax
	mov	edi, 48
	mov	esi, eax
	mov	rdi, rbx
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -100[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -100[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L9
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
	jne	.L14
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
	jle	.L16
	mov	eax, 2147483648
	cmp	QWORD PTR -8[rbp], rax
	jl	.L17
	mov	eax, 1
	jmp	.L18
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
	jne	.L21
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	__errno_location@PLT
	mov	eax, DWORD PTR [rax]
	cmp	eax, 34
	je	.L22
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	test	al, al
	je	.L23
	mov	eax, 1
	jmp	.L24
	mov	eax, 0
	test	al, al
	je	.L25
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR -28[rbp], eax
	cmp	QWORD PTR -80[rbp], 0
	je	.L26
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
	mov	eax, edi
	mov	BYTE PTR -4[rbp], al
	movzx	eax, BYTE PTR -4[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L32
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L32
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