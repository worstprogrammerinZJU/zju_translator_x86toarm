main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rdx, -80[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 7
	jle	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	add	rax, rbp
	add	rax, rdx
	sub	rax, 80
	movzx	eax, BYTE PTR [rax]
	cmp	al, 46
	je	.L7
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 3
	add	rax, rbp
	add	rax, rdx
	sub	rax, 80
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 7
	jle	.L8
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 7
	jle	.L9
	mov	edi, 10
	call	putchar@PLT
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -16[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L10
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	movabs	rax, 9223372036854775807
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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