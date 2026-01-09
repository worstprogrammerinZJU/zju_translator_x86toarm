main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 96
	lea	rax, -72[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -36[rbp], 1
	jmp	.L2
	mov	rax, rsp
	mov	r12, rax
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -56[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -65[rbp], al
	mov	DWORD PTR -48[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -65[rbp], al
	jne	.L8
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	add	eax, edx
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L8
	mov	eax, 1
	jmp	.L9
	mov	eax, 0
	test	al, al
	je	.L10
	mov	DWORD PTR -40[rbp], 1
	add	DWORD PTR -48[rbp], 1
	mov	eax, DWORD PTR -48[rbp]
	movsx	rbx, eax
	lea	rax, -112[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L11
	add	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	lea	rax, -112[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L12
	cmp	DWORD PTR -40[rbp], 1
	jne	.L13
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L14
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	rsp, r12
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -72[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jle	.L15
	mov	eax, 0
	lea	rsp, -32[rbp]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L19
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L19
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