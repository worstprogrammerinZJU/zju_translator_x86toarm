_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -24[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	ceil@PLT
	cvttsd2si	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	add	eax, eax
	sub	eax, 1
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, ecx
	mov	esi, eax
	mov	rdi, rdx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	cmp	QWORD PTR -16[rbp], rax
	jge	.L5
	mov	DWORD PTR -8[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	add	eax, eax
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sub	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rcx, ecx
	sub	rax, rcx
	lea	rcx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	add	rax, rcx
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	cmp	QWORD PTR -16[rbp], rax
	jg	.L7
	jmp	.L2
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -20[rbp], edx
	test	eax, eax
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
	cmp	DWORD PTR -4[rbp], 1
	jne	.L13
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L13
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