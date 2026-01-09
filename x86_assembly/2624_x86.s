main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	jmp	.L2
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	lea	rdx, -80[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 7
	jle	.L4
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR -64[rbp]
	ucomisd	xmm0, xmm1
	jp	.L5
	ucomisd	xmm0, xmm1
	jne	.L5
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -56[rbp]
	ucomisd	xmm0, xmm1
	jp	.L5
	ucomisd	xmm0, xmm1
	jne	.L5
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -64[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L2
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	xmm1, QWORD PTR -80[rbp]
	ucomisd	xmm0, xmm1
	jp	.L8
	ucomisd	xmm0, xmm1
	jne	.L8
	movsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	ucomisd	xmm0, xmm1
	jp	.L8
	ucomisd	xmm0, xmm1
	jne	.L8
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -80[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -80[rbp], xmm0
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -72[rbp], xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L2
	movsd	xmm0, QWORD PTR -32[rbp]
	movsd	xmm1, QWORD PTR -80[rbp]
	ucomisd	xmm0, xmm1
	jp	.L11
	ucomisd	xmm0, xmm1
	jne	.L11
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	ucomisd	xmm0, xmm1
	jp	.L11
	ucomisd	xmm0, xmm1
	jne	.L11
	movsd	xmm1, QWORD PTR -64[rbp]
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -80[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -80[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -72[rbp], xmm0
	movsd	xmm0, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L2
	movsd	xmm1, QWORD PTR -80[rbp]
	movsd	xmm0, QWORD PTR -48[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -40[rbp]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -64[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm0
	movsd	xmm1, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm0, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L14
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: