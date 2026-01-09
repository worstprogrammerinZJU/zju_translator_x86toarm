_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	esi, eax
	mov	edi, 2
	movq	rax, xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movq	xmm1, rax
	subsd	xmm1, xmm0
	cvttsd2si	rdx, xmm1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	QWORD PTR -272[rbp+rax*8], rdx
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 31
	jle	.L3
	lea	rax, -280[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	jmp	.L4
	lea	rax, -288[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	DWORD PTR -8[rbp], 1
	jmp	.L5
	mov	rax, QWORD PTR -288[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR -272[rbp+rdx*8]
	cqo
	idiv	rcx
	mov	rax, rdx
	test	rax, rax
	jne	.L6
	mov	rax, QWORD PTR -288[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	rcx, QWORD PTR -272[rbp+rdx*8]
	cqo
	idiv	rcx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	jmp	.L4
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 31
	jle	.L8
	mov	rax, QWORD PTR -280[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR -280[rbp], rdx
	test	rax, rax
	setne	al
	test	al, al
	jne	.L9
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -8[rbp]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, DWORD PTR -4[rbp]
	movq	rax, xmm2
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
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