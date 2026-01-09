_Z3gcdii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -8[rbp], 0
	jne	.L2
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3gcdii
	nop
	leave
	ret
_Z7isPrimei:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jg	.L5
	mov	eax, 0
	jmp	.L6
	mov	DWORD PTR -4[rbp], 2
	jmp	.L7
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L8
	mov	eax, 0
	jmp	.L6
	add	DWORD PTR -4[rbp], 1
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	movsd	QWORD PTR -32[rbp], xmm1
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	movq	rax, xmm0
	movq	xmm2, rax
	comisd	xmm2, QWORD PTR -32[rbp]
	setnb	al
	test	al, al
	jne	.L9
	mov	eax, 1
	leave
	ret
_Z3lcmii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3gcdii
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	imul	eax, DWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -20[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 52
	je	.L14
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 55
	je	.L14
	mov	eax, 1
	jmp	.L15
	mov	eax, 0
	test	al, al
	je	.L16
	mov	eax, 0
	jmp	.L17
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L18
	mov	eax, 1
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 64
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -28[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -36[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	DWORD PTR -20[rbp], 0
	jmp	.L20
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	sete	al
	test	al, al
	je	.L21
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jle	.L22
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	jmp	.L22
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 87
	sete	al
	test	al, al
	je	.L23
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jge	.L22
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
	jmp	.L22
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 78
	sete	al
	test	al, al
	je	.L24
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jle	.L22
	mov	eax, DWORD PTR -32[rbp]
	add	eax, 1
	mov	DWORD PTR -32[rbp], eax
	jmp	.L22
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	sete	al
	test	al, al
	je	.L22
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L22
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jne	.L25
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jne	.L25
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ebx, 0
	mov	r12d, 0
	jmp	.L26
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L27
	mov	esi, -1
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	r12d, 1
	lea	rax, -80[rbp]
	mov	rdi, rax
	cmp	r12d, 1
	jne	.L29
	mov	ebx, 0
	mov	eax, ebx
	add	rsp, 64
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L34
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L34
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