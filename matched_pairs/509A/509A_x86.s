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
	sub	rsp, 104
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
	mov	QWORD PTR -64[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rax, ecx
	lea	rsi, 0[0+rax*4]
	mov	edi, DWORD PTR -84[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -72[rbp], rax
	movsx	rax, ecx
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], 0
	mov	r9, QWORD PTR -128[rbp]
	mov	r10, QWORD PTR -120[rbp]
	mov	rdx, r10
	imul	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	imul	rax, r9
	lea	r8, [rdx+rax]
	mov	rax, r9
	mul	QWORD PTR -112[rbp]
	add	r8, rdx
	mov	rdx, r8
	movsx	rax, ecx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	r8, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	r8, rdx
	mov	rdx, r8
	movsx	rdx, ecx
	movsx	rax, edi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
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
	mov	DWORD PTR -56[rbp], 0
	jmp	.L6
	cmp	DWORD PTR -52[rbp], 0
	je	.L7
	cmp	DWORD PTR -56[rbp], 0
	jne	.L8
	mov	rcx, rsi
	shr	rcx, 2
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rdi
	mov	DWORD PTR [rax+rdx*4], 1
	jmp	.L9
	mov	rcx, rsi
	shr	rcx, 2
	mov	eax, DWORD PTR -52[rbp]
	lea	edi, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	r8, edx
	movsx	rdx, edi
	imul	rdx, rcx
	add	rdx, r8
	mov	r8d, DWORD PTR [rax+rdx*4]
	mov	rcx, rsi
	shr	rcx, 2
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rdi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	ecx, [r8+rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	r8, edx
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	imul	rdx, rdi
	add	rdx, r8
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -84[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L10
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -84[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L11
	shr	rsi, 2
	mov	rcx, rsi
	mov	eax, DWORD PTR -84[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	lea	esi, -1[rax]
	mov	rax, QWORD PTR -80[rbp]
	movsx	rsi, esi
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L15
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L15
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