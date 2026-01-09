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
	sub	rsp, 56
	call	_Z5setupv
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	BYTE PTR -17[rbp], 0
	jmp	.L3
	mov	BYTE PTR -18[rbp], 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	test	rax, rax
	je	.L4
	lea	rax, -64[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L5
	mov	eax, 1
	jmp	.L6
	mov	eax, 0
	test	al, al
	je	.L7
	jmp	.L3
	mov	DWORD PTR -24[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	jne	.L9
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	jne	.L9
	movzx	eax, BYTE PTR -17[rbp]
	xor	eax, 1
	test	al, al
	je	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	test	al, al
	jne	.L23
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	jne	.L13
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L13
	mov	eax, 1
	jmp	.L14
	mov	eax, 0
	test	al, al
	je	.L15
	add	DWORD PTR -24[rbp], 1
	mov	BYTE PTR -17[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L17
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 47
	jne	.L17
	cmp	BYTE PTR -17[rbp], 0
	je	.L17
	mov	eax, 1
	jmp	.L18
	mov	eax, 0
	test	al, al
	je	.L19
	add	DWORD PTR -24[rbp], 1
	mov	BYTE PTR -17[rbp], 0
	jmp	.L16
	movzx	eax, BYTE PTR -17[rbp]
	xor	eax, 1
	test	al, al
	je	.L16
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	BYTE PTR -18[rbp], 1
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	movsx	rbx, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L20
	jmp	.L12
	nop
	cmp	BYTE PTR -18[rbp], 0
	je	.L3
	movzx	eax, BYTE PTR -17[rbp]
	xor	eax, 1
	test	al, al
	je	.L3
	mov	esi, 10
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	sub	rdx, 24
	mov	rdx, QWORD PTR [rdx]
	add	rax, rdx
	mov	rdi, rax
	test	al, al
	jne	.L21
	mov	ebx, 0
	lea	rax, -64[rbp]
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
	jne	.L28
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L28
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