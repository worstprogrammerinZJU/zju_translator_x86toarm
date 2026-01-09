gx:
gy:
dx:
dy:
x:
y:
dist:
	endbr64
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	QWORD PTR -16[rbp], xmm1
	movsd	QWORD PTR -24[rbp], xmm2
	movsd	QWORD PTR -32[rbp], xmm3
	movsd	xmm0, QWORD PTR -8[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR -8[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -16[rbp]
	subsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 0
	lea	r8, dy[rip]
	lea	rax, dx[rip]
	mov	rcx, rax
	lea	rax, gy[rip]
	mov	rdx, rax
	lea	rax, gx[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L4
	cmp	DWORD PTR -4[rbp], 0
	jne	.L4
	movsd	xmm2, QWORD PTR gy[rip]
	movsd	xmm1, QWORD PTR gx[rip]
	movsd	xmm0, QWORD PTR y[rip]
	mov	rax, QWORD PTR x[rip]
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	dist
	movsd	xmm1, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm2, QWORD PTR dy[rip]
	movsd	xmm1, QWORD PTR dx[rip]
	movsd	xmm0, QWORD PTR y[rip]
	mov	rax, QWORD PTR x[rip]
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	dist
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm1, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR -16[rbp]
	ja	.L10
	jmp	.L4
	mov	DWORD PTR -4[rbp], 1
	movsd	xmm0, QWORD PTR x[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR y[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	lea	rax, y[rip]
	mov	rdx, rax
	lea	rax, x[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L6
	cmp	DWORD PTR -4[rbp], 0
	jne	.L7
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
	movsd	xmm0, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: