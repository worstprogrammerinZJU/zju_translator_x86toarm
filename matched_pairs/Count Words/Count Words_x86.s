main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -4[rbp], 0
	mov	BYTE PTR -5[rbp], 0
	lea	rax, -64[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	QWORD PTR -80[rbp], rax
	jmp	.L2
	lea	rax, -72[rbp]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -17[rbp], al
	movsx	eax, BYTE PTR -17[rbp]
	mov	edi, eax
	call	isalpha@PLT
	test	eax, eax
	setne	al
	test	al, al
	je	.L3
	movzx	eax, BYTE PTR -5[rbp]
	xor	eax, 1
	test	al, al
	je	.L4
	add	DWORD PTR -4[rbp], 1
	mov	BYTE PTR -5[rbp], 1
	jmp	.L4
	mov	BYTE PTR -5[rbp], 0
	lea	rax, -72[rbp]
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L5
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
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
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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