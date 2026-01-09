main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	DWORD PTR -20[rbp], 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	sub	eax, 1
	mov	DWORD PTR -24[rbp], eax
	lea	rax, -96[rbp]
	mov	rdi, rax
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	test	al, al
	je	.L8
	add	DWORD PTR -20[rbp], 1
	sub	DWORD PTR -24[rbp], 1
	sub	DWORD PTR -28[rbp], 1
	cmp	DWORD PTR -24[rbp], 0
	js	.L5
	cmp	DWORD PTR -28[rbp], 0
	jns	.L6
	jmp	.L5
	nop
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rdx, [rbx+rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	movsx	rcx, eax
	mov	rax, rdx
	sub	rax, rcx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEm@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
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