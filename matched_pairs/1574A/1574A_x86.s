main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -92[rbp]
	add	eax, eax
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
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
	mov	esi, 16
	mov	edx, 0
	div	rsi
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
	mov	QWORD PTR -80[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -52[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L7
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	BYTE PTR [rdx+rax], 40
	jmp	.L8
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	BYTE PTR [rdx+rax], 41
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	add	eax, eax
	cmp	DWORD PTR -52[rbp], eax
	jl	.L9
	mov	DWORD PTR -56[rbp], 0
	jmp	.L10
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	add	eax, eax
	cmp	DWORD PTR -56[rbp], eax
	jl	.L11
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	mov	DWORD PTR -60[rbp], 1
	jmp	.L12
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR -81[rbp], al
	mov	eax, DWORD PTR -92[rbp]
	add	eax, eax
	sub	eax, 1
	sub	eax, DWORD PTR -60[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	cdqe
	movzx	ecx, BYTE PTR [rdx+rax]
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	mov	BYTE PTR [rdx+rax], cl
	mov	eax, DWORD PTR -92[rbp]
	add	eax, eax
	sub	eax, 1
	sub	eax, DWORD PTR -60[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	cdqe
	movzx	ecx, BYTE PTR -81[rbp]
	mov	BYTE PTR [rdx+rax], cl
	mov	DWORD PTR -64[rbp], 0
	jmp	.L13
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	movzx	eax, BYTE PTR [rdx+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	add	eax, eax
	cmp	DWORD PTR -64[rbp], eax
	jl	.L14
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L15
	mov	rsp, rbx
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -88[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L16
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
	jne	.L20
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L20
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