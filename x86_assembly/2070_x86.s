main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	lea	rcx, -16[rbp]
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movss	xmm0, DWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	ucomiss	xmm0, xmm1
	jp	.L2
	pxor	xmm1, xmm1
	ucomiss	xmm0, xmm1
	je	.L19
	movss	xmm1, DWORD PTR -8[rbp]
	movss	xmm0, DWORD PTR .LC2[rip]
	comiss	xmm0, xmm1
	jb	.L5
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 149
	jle	.L5
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 199
	jle	.L5
	mov	DWORD PTR -4[rbp], 1
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	movss	xmm1, DWORD PTR -8[rbp]
	movss	xmm0, DWORD PTR .LC4[rip]
	comiss	xmm0, xmm1
	jb	.L7
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 299
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 499
	jle	.L7
	cmp	DWORD PTR -4[rbp], 1
	jne	.L9
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 1
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	movss	xmm1, DWORD PTR -8[rbp]
	movss	xmm0, DWORD PTR .LC7[rip]
	comiss	xmm0, xmm1
	jb	.L10
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, 199
	jle	.L10
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 299
	jle	.L10
	cmp	DWORD PTR -4[rbp], 1
	jne	.L12
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 1
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -4[rbp], 0
	jne	.L13
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC10[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
	nop
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: