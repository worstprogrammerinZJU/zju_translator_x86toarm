main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 96
	setg	al
	test	al, al
	je	.L2
	lea	rax, -48[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	sub	eax, 32
	mov	ebx, eax
	lea	rax, -48[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	BYTE PTR [rax], bl
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	ebx, 0
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, ebx
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
	jne	.L6
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L6
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