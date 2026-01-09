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
	sub	rsp, 152
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -124[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, DWORD PTR -128[rbp]
	movsx	rax, edx
	sub	rax, 1
	mov	QWORD PTR -80[rbp], rax
	movsx	rax, edx
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, edx
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
	cmp	rsp, rcx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L5
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -88[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -128[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L7
	mov	edx, DWORD PTR -128[rbp]
	movsx	rax, edx
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, edx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], 0
	movsx	rax, edx
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
	cmp	rsp, rcx
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L10
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -104[rbp], rax
	mov	edx, DWORD PTR -128[rbp]
	movsx	rax, edx
	sub	rax, 1
	mov	QWORD PTR -112[rbp], rax
	movsx	rax, edx
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	movsx	rax, edx
	mov	QWORD PTR -192[rbp], rax
	mov	QWORD PTR -184[rbp], 0
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
	cmp	rsp, rcx
	je	.L12
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L11
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L13
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -120[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	jmp	.L14
	mov	rdx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	mov	eax, DWORD PTR [rdx+rax*4]
	cmp	eax, 2
	jne	.L15
	add	DWORD PTR -56[rbp], 1
	mov	rcx, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR [rcx+rdx*4], eax
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -128[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L16
	mov	DWORD PTR -56[rbp], 0
	mov	eax, DWORD PTR -128[rbp]
	sub	eax, 1
	mov	DWORD PTR -64[rbp], eax
	jmp	.L17
	mov	rdx, QWORD PTR -88[rbp]
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	mov	eax, DWORD PTR [rdx+rax*4]
	cmp	eax, 2
	jne	.L18
	add	DWORD PTR -56[rbp], 1
	mov	rcx, QWORD PTR -120[rbp]
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR [rcx+rdx*4], eax
	sub	DWORD PTR -64[rbp], 1
	cmp	DWORD PTR -64[rbp], 0
	jns	.L19
	mov	DWORD PTR -68[rbp], -1
	mov	DWORD PTR -72[rbp], 0
	jmp	.L20
	mov	rdx, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	mov	ecx, DWORD PTR [rdx+rax*4]
	mov	eax, DWORD PTR -72[rbp]
	add	eax, 1
	mov	rdx, QWORD PTR -120[rbp]
	cdqe
	mov	eax, DWORD PTR [rdx+rax*4]
	cmp	ecx, eax
	jne	.L21
	mov	eax, DWORD PTR -72[rbp]
	add	eax, 1
	mov	DWORD PTR -68[rbp], eax
	jmp	.L22
	add	DWORD PTR -72[rbp], 1
	mov	eax, DWORD PTR -128[rbp]
	sub	eax, 1
	cmp	DWORD PTR -72[rbp], eax
	jl	.L23
	mov	eax, DWORD PTR -68[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rsp, rbx
	mov	eax, DWORD PTR -124[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -124[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L24
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
	jne	.L28
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L28
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