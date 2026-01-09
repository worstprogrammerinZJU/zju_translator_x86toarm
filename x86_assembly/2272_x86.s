point:
	endbr64
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L18
	mov	eax, 100
	jmp	.L4
	movsd	xmm0, QWORD PTR .LC1[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L19
	mov	eax, 80
	jmp	.L4
	movsd	xmm0, QWORD PTR .LC2[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L20
	mov	eax, 60
	jmp	.L4
	movsd	xmm0, QWORD PTR .LC3[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L21
	mov	eax, 40
	jmp	.L4
	movsd	xmm0, QWORD PTR .LC4[rip]
	comisd	xmm0, QWORD PTR -8[rbp]
	jb	.L22
	mov	eax, 20
	jmp	.L4
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L24
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	point
	add	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L25
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	point
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 1
	jle	.L26
	mov	DWORD PTR -12[rbp], 0
	jmp	.L27
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm2, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	point
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 2
	jle	.L28
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L29
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L30
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L31
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L30
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR -32[rbp]
	ucomisd	xmm0, QWORD PTR .LC10[rip]
	jp	.L32
	ucomisd	xmm0, QWORD PTR .LC10[rip]
	jne	.L32
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: