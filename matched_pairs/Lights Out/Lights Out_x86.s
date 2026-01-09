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
	sub	rsp, 48
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
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
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L20
	mov	eax, 1
	jmp	.L21
	mov	eax, 0
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -8[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -12[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -20[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L22
	mov	edx, 1
	jmp	.L23
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -24[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L24
	mov	edx, 1
	jmp	.L25
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	ecx, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -20[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -28[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -16[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L26
	mov	edx, 1
	jmp	.L27
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -32[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -16[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -24[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L28
	mov	edx, 1
	jmp	.L29
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -12[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -36[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -24[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L30
	mov	edx, 1
	jmp	.L31
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	ecx, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -16[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -32[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L32
	mov	edx, 1
	jmp	.L33
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -28[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -36[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -20[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L34
	mov	edx, 1
	jmp	.L35
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	ecx, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -36[rbp]
	add	ecx, edx
	mov	edx, DWORD PTR -24[rbp]
	add	edx, ecx
	and	edx, 1
	test	edx, edx
	jne	.L36
	mov	edx, 1
	jmp	.L37
	mov	edx, 0
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	eax, 0
	leave
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
	jne	.L43
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L43
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