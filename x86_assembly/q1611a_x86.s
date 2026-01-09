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
	sub	rsp, 72
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L13
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -40[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	DWORD PTR -32[rbp], eax
	mov	ecx, DWORD PTR -32[rbp]
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	sub	edx, eax
	mov	DWORD PTR -32[rbp], edx
	mov	edx, DWORD PTR -40[rbp]
	lea	rax, -80[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt7__cxx119to_stringEi
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L14
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	and	eax, 1
	test	eax, eax
	sete	al
	test	al, al
	je	.L15
	add	DWORD PTR -24[rbp], 1
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L16
	mov	eax, DWORD PTR -40[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L17
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L18
	lea	rax, -80[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	and	eax, 1
	test	eax, eax
	sete	al
	test	al, al
	je	.L19
	mov	esi, 1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L18
	cmp	DWORD PTR -24[rbp], 0
	jle	.L20
	mov	esi, 2
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L18
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -80[rbp]
	mov	rdi, rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L21
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
	jmp	.L25
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
	ja	.L26
	cmp	DWORD PTR -32[rbp], 9
	jbe	.L27
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
	jmp	.L29
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