	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	eax, DWORD PTR -28[rbp]
	shr	eax, 31
	mov	BYTE PTR -1[rbp], al
	cmp	BYTE PTR -1[rbp], 0
	je	.L2
	mov	eax, DWORD PTR -28[rbp]
	neg	eax
	jmp	.L3
	mov	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, 10
	mov	edi, eax
	mov	DWORD PTR -12[rbp], eax
	lea	rax, -13[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	movzx	edx, BYTE PTR -1[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rdx, -13[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rdx
	mov	edx, 45
	mov	rdi, rax
	lea	rax, -13[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	movzx	edx, BYTE PTR -1[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, rax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	rdi, rcx
	nop
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	imul	eax, eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -8[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	imul	eax, DWORD PTR -12[rbp]
	mov	eax, eax
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jnb	.L6
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jnb	.L8
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jnb	.L9
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 2
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L10
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 3
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, 0
	div	QWORD PTR -24[rbp]
	mov	DWORD PTR -36[rbp], eax
	add	DWORD PTR -4[rbp], 4
	jmp	.L11
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
	mov	DWORD PTR -20[rbp], 1
	jmp	.L13
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 1
	jmp	.L14
	lea	rax, -144[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	DWORD PTR -24[rbp], eax
	setne	al
	test	al, al
	je	.L15
	lea	rax, -64[rbp]
	mov	edx, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	ecx, al
	lea	rax, -96[rbp]
	lea	rdx, -64[rbp]
	mov	esi, ecx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 8
	jle	.L16
	mov	BYTE PTR -25[rbp], 97
	jmp	.L17
	lea	rax, -144[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -25[rbp], al
	setne	al
	test	al, al
	je	.L18
	movsx	eax, BYTE PTR -25[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -144[rbp]
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	mov	rdi, rbx
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	movzx	eax, BYTE PTR -25[rbp]
	add	eax, 1
	mov	BYTE PTR -25[rbp], al
	cmp	BYTE PTR -25[rbp], 104
	jle	.L19
	lea	rax, -144[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -100[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L20
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, edx
	mov	QWORD PTR -48[rbp], rcx
	mov	BYTE PTR -36[rbp], al
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	movsx	edx, BYTE PTR -36[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L24
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	shr	eax, 5
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	add	eax, eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	eax, eax
	imul	rax, rax, 1374389535
	shr	rax, 32
	shr	eax, 5
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	ecx, ecx
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	movzx	eax, BYTE PTR [rax+rcx]
	mov	BYTE PTR [rdx], al
	sub	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -32[rbp], 99
	ja	.L25
	cmp	DWORD PTR -32[rbp], 9
	jbe	.L26
	mov	eax, DWORD PTR -32[rbp]
	add	eax, eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	ecx, ecx
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	jmp	.L28
	mov	eax, DWORD PTR -32[rbp]
	add	eax, 48
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	nop
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	QWORD PTR -24[rbp], rdx
	mov	BYTE PTR -12[rbp], al
	movsx	edx, BYTE PTR -12[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	ecx, edx
	mov	edx, 1
	mov	esi, 0
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L35
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L35
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