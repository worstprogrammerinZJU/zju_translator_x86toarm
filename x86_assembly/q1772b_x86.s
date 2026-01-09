_Z5checkPA2_i:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jle	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jle	.L3
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L4
	mov	DWORD PTR -4[rbp], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 8
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jle	.L5
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR -4[rbp], 0
	jne	.L6
	mov	eax, 0
	jmp	.L7
	mov	eax, 1
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L9
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	DWORD PTR -12[rbp], 0
	jmp	.L11
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -68[rbp]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rdx, rcx
	mov	DWORD PTR -48[rbp+rdx*4], eax
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 1
	jle	.L12
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 1
	jle	.L13
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	jmp	.L14
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_Z5checkPA2_i
	test	al, al
	je	.L15
	mov	DWORD PTR -16[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -52[rbp], eax
	mov	DWORD PTR -24[rbp], 0
	jmp	.L17
	mov	DWORD PTR -28[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -24[rbp]
	movsx	rdx, edx
	add	rdx, rdx
	add	rdx, rcx
	mov	DWORD PTR -48[rbp+rdx*4], eax
	add	DWORD PTR -28[rbp], 1
	cmp	DWORD PTR -28[rbp], 1
	jle	.L19
	add	DWORD PTR -24[rbp], 1
	cmp	DWORD PTR -24[rbp], 1
	jle	.L20
	add	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 3
	jle	.L21
	cmp	DWORD PTR -16[rbp], 1
	jne	.L22
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L23
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L24
	mov	eax, 0
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