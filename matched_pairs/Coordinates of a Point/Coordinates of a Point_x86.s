main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
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
	jp	.L2
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L2
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L23
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	je	.L2
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L6
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L6
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L25
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	je	.L6
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L9
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L9
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	.L9
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.L9
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L12
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L12
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	movsd	xmm1, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L15
	movsd	xmm0, QWORD PTR -16[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L15
	lea	rax, .LC5[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	movsd	xmm1, QWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L18
	movsd	xmm1, QWORD PTR -16[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L18
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L5
	lea	rax, .LC7[rip]
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
	jne	.L36
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L36
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