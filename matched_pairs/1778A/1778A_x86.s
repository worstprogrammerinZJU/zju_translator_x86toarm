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
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	rax, rsp
	mov	rbx, rax
	lea	rax, -88[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -88[rbp]
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
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
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
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	BYTE PTR -49[rbp], 0
	mov	BYTE PTR -50[rbp], 0
	mov	DWORD PTR -56[rbp], 0
	lea	rax, -92[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -92[rbp]
	add	DWORD PTR -56[rbp], eax
	mov	DWORD PTR -60[rbp], 0
	jmp	.L6
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -96[rbp]
	add	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, -1
	jne	.L7
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, -1
	jne	.L7
	mov	BYTE PTR -49[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, 1
	jne	.L8
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, -1
	jne	.L8
	mov	BYTE PTR -50[rbp], 1
	mov	eax, DWORD PTR -92[rbp]
	cmp	eax, -1
	jne	.L9
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, 1
	jne	.L9
	mov	BYTE PTR -50[rbp], 1
	mov	eax, DWORD PTR -96[rbp]
	mov	DWORD PTR -92[rbp], eax
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -88[rbp]
	sub	eax, 1
	cmp	DWORD PTR -60[rbp], eax
	jl	.L10
	cmp	BYTE PTR -49[rbp], 0
	je	.L11
	add	DWORD PTR -56[rbp], 4
	jmp	.L12
	movzx	eax, BYTE PTR -50[rbp]
	xor	eax, 1
	test	al, al
	je	.L12
	movzx	eax, BYTE PTR -49[rbp]
	xor	eax, 1
	test	al, al
	je	.L12
	sub	DWORD PTR -56[rbp], 4
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rsp, rbx
	mov	eax, DWORD PTR -84[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -84[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L13
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