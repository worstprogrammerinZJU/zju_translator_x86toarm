main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -798720[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 1312
	pxor	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -800020[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -800020[rbp]
	add	eax, eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -8[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -800020[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -800016[rbp+rax*8], xmm0
	mov	eax, DWORD PTR -800020[rbp]
	add	eax, 1
	mov	DWORD PTR -800020[rbp], eax
	mov	eax, DWORD PTR -800020[rbp]
	cmp	eax, 99999
	jle	.L3
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	mov	eax, DWORD PTR -800020[rbp]
	cdqe
	mov	rdx, QWORD PTR -800016[rbp+rax*8]
	mov	eax, DWORD PTR -800020[rbp]
	movq	xmm0, rdx
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rax, -800020[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: