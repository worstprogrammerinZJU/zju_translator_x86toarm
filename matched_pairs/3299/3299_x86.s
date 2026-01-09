d:
t:
h:
e:
Exp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	xmm1, QWORD PTR d[rip]
	movsd	xmm0, QWORD PTR .LC0[rip]
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR d[rip]
	divsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	call	exp@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
calH:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	Exp
	movsd	xmm1, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	movsd	xmm0, QWORD PTR e[rip]
	movsd	xmm2, QWORD PTR .LC3[rip]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR t[rip]
	addsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR h[rip], xmm0
	nop
	leave
	ret
calT:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	Exp
	movsd	xmm1, QWORD PTR .LC2[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	movsd	xmm0, QWORD PTR e[rip]
	movsd	xmm2, QWORD PTR .LC3[rip]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR h[rip]
	subsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR t[rip], xmm0
	nop
	leave
	ret
calD:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	xmm0, QWORD PTR h[rip]
	movsd	xmm1, QWORD PTR t[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm2, QWORD PTR .LC4[rip]
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC3[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	movsd	xmm0, QWORD PTR e[rip]
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR e[rip], xmm0
	mov	rax, QWORD PTR e[rip]
	movq	xmm0, rax
	call	log@PLT
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	subsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC6[rip]
	divsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC0[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR d[rip], xmm0
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	jmp	.L7
	mov	DWORD PTR -116[rbp], 0
	mov	eax, DWORD PTR -116[rbp]
	mov	DWORD PTR -120[rbp], eax
	mov	eax, DWORD PTR -120[rbp]
	mov	DWORD PTR -124[rbp], eax
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 84
	jne	.L8
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR t[rip], xmm0
	mov	DWORD PTR -124[rbp], 1
	jmp	.L9
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 68
	jne	.L10
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR d[rip], xmm0
	mov	DWORD PTR -120[rbp], 1
	jmp	.L9
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 72
	jne	.L9
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR h[rip], xmm0
	mov	DWORD PTR -116[rbp], 1
	lea	rdx, -8[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 84
	jne	.L11
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR t[rip], xmm0
	mov	DWORD PTR -124[rbp], 1
	jmp	.L12
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 68
	jne	.L13
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR d[rip], xmm0
	mov	DWORD PTR -120[rbp], 1
	jmp	.L12
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 72
	jne	.L12
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR h[rip], xmm0
	mov	DWORD PTR -116[rbp], 1
	mov	eax, DWORD PTR -124[rbp]
	test	eax, eax
	jne	.L14
	mov	eax, 0
	call	calT
	jmp	.L15
	mov	eax, DWORD PTR -120[rbp]
	test	eax, eax
	jne	.L16
	mov	eax, 0
	call	calD
	jmp	.L15
	mov	eax, 0
	call	calH
	movsd	xmm1, QWORD PTR h[rip]
	movsd	xmm0, QWORD PTR d[rip]
	mov	rax, QWORD PTR t[rip]
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 3
	call	printf@PLT
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC10[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -112[rbp]
	cmp	al, 69
	jne	.L17
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: