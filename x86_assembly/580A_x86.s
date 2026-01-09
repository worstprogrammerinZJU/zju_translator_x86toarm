	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, 2147483647
	pop	rbp
	ret
_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 64
	mov	rax, rsp
	mov	r12, rax
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -68[rbp]
	add	eax, 1
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -56[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -96[rbp], rdx
	mov	QWORD PTR -88[rbp], 0
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
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
	je	.L5
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L4
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L6
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L8
	mov	ebx, DWORD PTR -68[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	movsx	rcx, ebx
	mov	DWORD PTR [rdx+rcx*4], eax
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
	mov	DWORD PTR -48[rbp], 0
	jmp	.L9
	add	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jle	.L10
	mov	eax, DWORD PTR -44[rbp]
	jmp	.L11
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -48[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR -48[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	cmp	ecx, eax
	jle	.L12
	mov	DWORD PTR -44[rbp], 0
	add	DWORD PTR -48[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -48[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	rsp, r12
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