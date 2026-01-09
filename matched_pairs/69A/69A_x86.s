_ZL3INF:
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
	mov	rax, rsp
	mov	rbx, rax
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	ecx, DWORD PTR -84[rbp]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	imul	rdx, r15, 96
	imul	rax, r14, 0
	lea	rsi, [rdx+rax]
	mov	eax, 96
	mul	r14
	add	rsi, rdx
	mov	rdx, rsi
	movsx	rdx, ecx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	movsx	rax, ecx
	mov	r12, rax
	mov	r13d, 0
	imul	rdx, r13, 96
	imul	rax, r12, 0
	lea	rsi, [rdx+rax]
	mov	eax, 96
	mul	r12
	add	rsi, rdx
	mov	rdx, rsi
	movsx	rdx, ecx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
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
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rcx, rax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZNSirsERi@PLT
	mov	rcx, rax
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rsi, rax
	mov	rdi, rcx
	call	_ZNSirsERi@PLT
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -84[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L6
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	jmp	.L7
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -64[rbp], 0
	jmp	.L8
	mov	rdx, QWORD PTR -80[rbp]
	mov	eax, DWORD PTR -60[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	add	rax, rsi
	mov	eax, DWORD PTR [rdx+rax*4]
	add	DWORD PTR -56[rbp], eax
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -84[rbp]
	cmp	DWORD PTR -64[rbp], eax
	jl	.L9
	cmp	DWORD PTR -56[rbp], 0
	je	.L10
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	jmp	.L11
	add	DWORD PTR -60[rbp], 1
	cmp	DWORD PTR -60[rbp], 2
	jle	.L12
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	mov	rsp, rbx
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