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
	sub	rsp, 16
	call	_Z5setupv
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERd@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERd@PLT
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L3
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L3
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L24
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	je	.L3
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L7
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L7
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L26
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	je	.L7
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L10
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L10
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L10
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L10
	lea	rax, .LC7[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L13
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L13
	lea	rax, .LC8[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	movsd	xmm1, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L16
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L16
	lea	rax, .LC9[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	movsd	xmm1, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L19
	movsd	xmm1, QWORD PTR -16[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L19
	lea	rax, .LC10[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L6
	lea	rax, .LC11[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L37
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L37
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