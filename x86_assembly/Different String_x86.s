main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	BYTE PTR -17[rbp], 0
	mov	DWORD PTR -24[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	lea	rax, -64[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	setne	al
	test	al, al
	je	.L4
	mov	BYTE PTR -17[rbp], 1
	jmp	.L5
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rbx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L6
	movzx	eax, BYTE PTR -17[rbp]
	xor	eax, 1
	test	al, al
	je	.L7
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L8
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	DWORD PTR -28[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rbx, rax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L10
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -32[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L11
	mov	eax, 0
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
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -1[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	lea	rax, -1[rbp]
	mov	rdi, rax
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	BYTE PTR [rax], dl
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
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
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