main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rdx, -48[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 5
	jle	.L5
	cmp	DWORD PTR -16[rbp], 0
	je	.L11
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	jmp	.L8
	nop
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: