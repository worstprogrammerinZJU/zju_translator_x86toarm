main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, DWORD PTR -24[rbp]
	lea	edx, 26[rax]
	movsx	rax, edx
	imul	rax, rax, 1321528399
	shr	rax, 32
	sar	eax, 3
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 26
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -32[rbp]
	lea	edx, 26[rax]
	movsx	rax, edx
	imul	rax, rax, 1321528399
	shr	rax, 32
	sar	eax, 3
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 26
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -72[rbp], eax
	lea	rdx, -72[rbp]
	lea	rax, -68[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	add	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L3
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L6
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L7
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
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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