	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, 0
	test	al, al
	je	.L3
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	jmp	.L4
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 152
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -20[rbp], 1
	jmp	.L6
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -28[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	je	.L8
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 115
	jne	.L9
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	je	.L8
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	jne	.L10
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 115
	je	.L8
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	jne	.L11
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	jne	.L11
	mov	eax, 1
	jmp	.L12
	mov	eax, 0
	test	al, al
	je	.L13
	mov	DWORD PTR -24[rbp], 0
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L14
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	movsx	rbx, eax
	lea	rax, -160[rbp]
	mov	rdi, rax
	sub	rax, 1
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L15
	lea	rax, -160[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L16
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -24[rbp], 0
	cmp	DWORD PTR -24[rbp], 0
	je	.L17
	mov	DWORD PTR -32[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	je	.L19
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	je	.L19
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 115
	je	.L19
	mov	eax, 1
	jmp	.L20
	mov	eax, 0
	test	al, al
	je	.L21
	mov	DWORD PTR -24[rbp], 0
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	movsx	rbx, eax
	lea	rax, -160[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L22
	cmp	DWORD PTR -24[rbp], 0
	jne	.L23
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	ebx, 0
	jmp	.L24
	lea	rax, -160[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L25
	lea	rax, -160[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L25
	lea	rax, -160[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L26
	mov	eax, 1
	jmp	.L27
	mov	eax, 0
	test	al, al
	je	.L28
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -24[rbp], 1
	jmp	.L17
	lea	rax, -160[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L29
	lea	rax, -160[rbp]
	lea	rdx, .LC6[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L30
	mov	eax, 1
	jmp	.L31
	mov	eax, 0
	test	al, al
	je	.L32
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -24[rbp], 1
	jmp	.L17
	lea	rax, -81[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -81[rbp]
	lea	rax, -128[rbp]
	lea	rcx, .LC7[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -81[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	DWORD PTR -36[rbp], 0
	jmp	.L33
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -37[rbp], al
	lea	rax, -128[rbp]
	lea	rdx, .LC8[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L34
	lea	rax, -128[rbp]
	lea	rdx, .LC9[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L34
	lea	rax, -128[rbp]
	lea	rdx, .LC10[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L34
	mov	eax, 1
	jmp	.L35
	mov	eax, 0
	test	al, al
	je	.L36
	movsx	edx, BYTE PTR -37[rbp]
	lea	rax, -80[rbp]
	lea	rcx, -128[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	jmp	.L37
	lea	rax, -128[rbp]
	lea	rdx, .LC8[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L38
	lea	rax, -128[rbp]
	lea	rdx, .LC9[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L38
	lea	rax, -128[rbp]
	lea	rdx, .LC10[rip]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L38
	mov	eax, 1
	jmp	.L39
	mov	eax, 0
	test	al, al
	je	.L37
	mov	DWORD PTR -24[rbp], 1
	lea	rax, -128[rbp]
	lea	rdx, .LC7[rip]
	mov	rsi, rdx
	mov	rdi, rax
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	movsx	rbx, eax
	lea	rax, -160[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L40
	cmp	DWORD PTR -24[rbp], 1
	jne	.L41
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	ebx, 1
	lea	rax, -160[rbp]
	mov	rdi, rax
	cmp	ebx, 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -88[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L44
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L49
	add	QWORD PTR -8[rbp], 1
	mov	BYTE PTR -9[rbp], 0
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	lea	rax, -9[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	xor	eax, 1
	test	al, al
	jne	.L50
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	cmp	QWORD PTR -48[rbp], 0
	je	.L53
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	add	rax, rdx
	jmp	.L54
	mov	eax, 1
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	xor	eax, 1
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	eax, edx
	mov	BYTE PTR -20[rbp], al
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movsx	edx, BYTE PTR -20[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	nop
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	test	al, al
	je	.L64
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	je	.L64
	mov	eax, 1
	jmp	.L65
	mov	eax, 0
	test	al, al
	je	.L66
	lea	rax, .LC11[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, 15
	jbe	.L67
	lea	rcx, -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	sete	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L76
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L76
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