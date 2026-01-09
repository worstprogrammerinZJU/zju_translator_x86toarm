main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 216
	lea	rax, -128[rbp]
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -192[rbp]
	mov	rdi, rax
	lea	rax, -224[rbp]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -160[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, -128[rbp]
	mov	edx, 0
	mov	esi, 124
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	lea	rsi, -128[rbp]
	mov	rcx, rdx
	mov	edx, 0
	mov	rdi, rax
	lea	rdx, -96[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -64[rbp]
	lea	rsi, -128[rbp]
	mov	rcx, -1
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -25[rbp], al
	lea	rax, -192[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -224[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setbe	al
	test	al, al
	je	.L3
	movsx	edx, BYTE PTR -25[rbp]
	lea	rax, -192[rbp]
	mov	esi, edx
	mov	rdi, rax
	jmp	.L4
	movsx	edx, BYTE PTR -25[rbp]
	lea	rax, -224[rbp]
	mov	esi, edx
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	lea	rax, -160[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L5
	lea	rax, -192[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -224[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L6
	lea	rax, -192[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	lea	rax, -224[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	jmp	.L7
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	lea	rax, -224[rbp]
	mov	rdi, rax
	lea	rax, -192[rbp]
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, 0
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
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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