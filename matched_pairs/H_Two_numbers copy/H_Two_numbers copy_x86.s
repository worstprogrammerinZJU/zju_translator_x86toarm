_Z5setupv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	call	_Z5setupv
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	rdx, rax
	lea	rax, .LC6[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	floor@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	mov	rdi, rbx
	call	_ZNSolsEd@PLT
	mov	esi, 10
	mov	rdi, rax
	lea	rax, .LC7[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	rdx, rax
	lea	rax, .LC6[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	ceil@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	mov	rdi, rbx
	call	_ZNSolsEd@PLT
	mov	esi, 10
	mov	rdi, rax
	lea	rax, .LC8[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	movq	xmm0, rax
	mov	rdi, rdx
	call	_ZNSolsEd@PLT
	mov	rdx, rax
	lea	rax, .LC6[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	round@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	mov	rdi, rbx
	call	_ZNSolsEd@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L6
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L6
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