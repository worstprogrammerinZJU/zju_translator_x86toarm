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
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -76[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -64[rbp], rax
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, ecx
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, ecx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rsi, rax
	and	rsi, -4096
	mov	rdx, rsp
	sub	rdx, rsi
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
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	movsx	rdx, ecx
	lea	rcx, -1[rdx]
	mov	DWORD PTR [rax], 0
	lea	rdx, 4[rax]
	lea	rax, -1[rcx]
	jmp	.L5
	mov	DWORD PTR [rdx], 0
	add	rdx, 4
	sub	rax, 1
	test	rax, rax
	jns	.L6
	mov	DWORD PTR -52[rbp], 0
	jmp	.L7
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -80[rbp]
	sub	eax, 1
	mov	rdx, QWORD PTR -72[rbp]
	movsx	rcx, eax
	mov	edx, DWORD PTR [rdx+rcx*4]
	lea	ecx, 1[rdx]
	mov	rdx, QWORD PTR -72[rbp]
	cdqe
	mov	DWORD PTR [rdx+rax*4], ecx
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -76[rbp]
	sub	eax, 1
	cmp	DWORD PTR -52[rbp], eax
	jl	.L8
	mov	DWORD PTR -56[rbp], 0
	jmp	.L9
	mov	rax, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR -56[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	jmp	.L11
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -76[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L12
	mov	rsp, rbx
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