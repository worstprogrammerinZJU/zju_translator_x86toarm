main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -128[rbp]
	mov	rdi, rax
	jmp	.L2
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -80[rbp], rdx
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	cdqe
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
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
	add	rax, 0
	mov	QWORD PTR -88[rbp], rax
	lea	rax, -128[rbp]
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -53[rbp], al
	mov	DWORD PTR -60[rbp], 0
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -64[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -53[rbp], al
	setne	al
	test	al, al
	je	.L7
	mov	rdx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	movzx	ecx, BYTE PTR -53[rbp]
	mov	BYTE PTR [rdx+rax], cl
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -53[rbp], al
	add	DWORD PTR -60[rbp], 1
	mov	DWORD PTR -68[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	ecx, BYTE PTR [rax]
	mov	rdx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	cmp	cl, al
	sete	al
	test	al, al
	je	.L9
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -52[rbp], 1
	jmp	.L10
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L11
	cmp	DWORD PTR -52[rbp], 1
	je	.L18
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -64[rbp], eax
	jl	.L14
	jmp	.L13
	nop
	cmp	DWORD PTR -52[rbp], 0
	jne	.L15
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rsp, rbx
	mov	eax, DWORD PTR -92[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -92[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L16
	mov	ebx, 0
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, ebx
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
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
	jne	.L21
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L21
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