main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 72
	mov	rax, rsp
	mov	rbx, rax
	mov	QWORD PTR -96[rbp], 1
	mov	QWORD PTR -104[rbp], 1
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -72[rbp], rdx
	mov	rdx, rax
	mov	r14, rdx
	mov	r15d, 0
	mov	rdx, rax
	mov	r12, rdx
	mov	r13d, 0
	lea	rdx, 0[0+rax*8]
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
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -56[rbp], 0
	jmp	.L5
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	add	QWORD PTR -56[rbp], 1
	mov	rax, QWORD PTR -88[rbp]
	cmp	QWORD PTR -56[rbp], rax
	jl	.L6
	mov	QWORD PTR -64[rbp], 1
	jmp	.L7
	mov	rax, QWORD PTR -64[rbp]
	lea	rdx, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax+rdx*8]
	cmp	rcx, rax
	jge	.L8
	mov	rax, QWORD PTR -96[rbp]
	add	rax, 1
	mov	QWORD PTR -96[rbp], rax
	lea	rdx, -96[rbp]
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -104[rbp], rax
	jmp	.L9
	mov	QWORD PTR -96[rbp], 1
	add	QWORD PTR -64[rbp], 1
	mov	rax, QWORD PTR -88[rbp]
	cmp	QWORD PTR -64[rbp], rax
	jl	.L10
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L13
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L14
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L17
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L17
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