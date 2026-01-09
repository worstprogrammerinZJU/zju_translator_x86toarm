main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 120
	mov	rax, rsp
	mov	QWORD PTR -152[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -96[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rbx, ecx
	mov	esi, DWORD PTR -92[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], 0
	movsx	rax, esi
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	mov	r8, QWORD PTR -112[rbp]
	mov	r9, QWORD PTR -104[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -128[rbp]
	mov	r11, QWORD PTR -120[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rdi, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rdi, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rdx, ecx
	movsx	rax, esi
	imul	rax, rdx
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L5
	mov	DWORD PTR -60[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rcx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 77
	je	.L7
	mov	rcx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 67
	je	.L7
	mov	rcx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	imul	rax, rbx
	add	rdx, rcx
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	jne	.L8
	mov	DWORD PTR -52[rbp], 1
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L9
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L10
	cmp	DWORD PTR -52[rbp], 0
	jne	.L11
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L12
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	rsp, QWORD PTR -152[rbp]
	mov	eax, 0
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
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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