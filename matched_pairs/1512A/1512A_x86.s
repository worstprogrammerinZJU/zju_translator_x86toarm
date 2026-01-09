main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -80[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -64[rbp], rdx
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
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
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -72[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -80[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L7
	mov	DWORD PTR -56[rbp], 0
	jmp	.L8
	cmp	DWORD PTR -56[rbp], 0
	jne	.L9
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	je	.L9
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 2[rax]
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	je	.L9
	mov	eax, DWORD PTR -56[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L10
	cmp	DWORD PTR -56[rbp], 0
	jne	.L11
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	je	.L11
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 2[rax]
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	je	.L17
	mov	eax, DWORD PTR -80[rbp]
	sub	eax, 1
	cmp	DWORD PTR -56[rbp], eax
	jne	.L13
	mov	eax, DWORD PTR -56[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L10
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	je	.L12
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	je	.L12
	mov	eax, DWORD PTR -56[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L10
	nop
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -80[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L14
	mov	rsp, rbx
	mov	eax, DWORD PTR -76[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -76[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L15
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