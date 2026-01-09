seed:
x:
y:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
	movzx	eax, BYTE PTR -32[rbp]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -8[rbp], eax
	movzx	eax, BYTE PTR -31[rbp]
	test	al, al
	je	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	pxor	xmm0, xmm0
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	pxor	xmm0, xmm0
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	DWORD PTR -4[rbp], 2
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	movsx	eax, al
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	subsd	xmm0, xmm1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	cmp	al, 32
	jne	.L5
	add	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm1, xmm0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	movsx	eax, al
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC2[rip]
	subsd	xmm0, xmm1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	test	al, al
	jne	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 26
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 26
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	jmp	.L8
	mov	eax, 0
	call	random
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, 0
	call	random
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, 0
	call	random
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 26
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, 0
	call	random
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 26
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 64
	jle	.L15
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 90
	jle	.L10
	movzx	eax, BYTE PTR -30[rbp]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -8[rbp], eax
	movzx	eax, BYTE PTR -28[rbp]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -4[rbp], eax
	movzx	eax, BYTE PTR -26[rbp]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -12[rbp], eax
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 49
	jne	.L11
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, 0
	mov	edi, eax
	call	first
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, 1
	mov	edi, eax
	call	first
	jmp	.L12
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 50
	jne	.L13
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, 0
	mov	edi, eax
	call	second
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, 1
	mov	edi, eax
	call	second
	jmp	.L12
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 51
	jne	.L12
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, 0
	mov	edi, eax
	call	third
	mov	edx, DWORD PTR -12[rbp]
	mov	esi, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, 1
	mov	edi, eax
	call	third
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 48
	jle	.L14
	movzx	eax, BYTE PTR -32[rbp]
	cmp	al, 51
	jle	.L15
	movzx	eax, BYTE PTR -32[rbp]
	movsx	eax, al
	sub	eax, 65
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 26
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movsd	xmm1, QWORD PTR .LC3[rip]
	comisd	xmm1, xmm0
	jbe	.L16
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, 26
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movsd	xmm1, QWORD PTR .LC3[rip]
	comisd	xmm1, xmm0
	jbe	.L16
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	mov	rax, QWORD PTR [rdx+rax]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	jmp	.L19
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -32[rbp]
	lea	rdx, .LC6[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L10
	mov	eax, 0
	leave
	ret
first:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	DWORD PTR -12[rbp], edx
	mov	DWORD PTR -16[rbp], ecx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC7[rip]
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC7[rip]
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	nop
	pop	rbp
	ret
second:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	DWORD PTR -48[rbp], ecx
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	ucomisd	xmm0, xmm1
	jp	.L25
	ucomisd	xmm0, xmm1
	jne	.L25
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm2, QWORD PTR [rdx+rax]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	addsd	xmm0, xmm1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	jmp	.L29
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	atan2@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	movapd	xmm1, xmm0
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm3, QWORD PTR [rdx+rax]
	movsd	QWORD PTR -56[rbp], xmm3
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	sin@PLT
	movq	rax, xmm0
	movq	xmm1, rax
	mulsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm4, QWORD PTR [rdx+rax]
	movsd	QWORD PTR -56[rbp], xmm4
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	cos@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	mulsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	nop
	leave
	ret
third:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	DWORD PTR -48[rbp], ecx
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	ucomisd	xmm0, xmm1
	jp	.L31
	ucomisd	xmm0, xmm1
	jne	.L31
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm2, QWORD PTR [rdx+rax]
	movapd	xmm1, xmm0
	subsd	xmm1, xmm2
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	addsd	xmm0, xmm1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	jmp	.L35
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	atan2@PLT
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	movapd	xmm1, xmm0
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	xmm4, QWORD PTR [rdx+rax]
	movsd	QWORD PTR -56[rbp], xmm4
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	sin@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	mulsd	xmm0, QWORD PTR -32[rbp]
	addsd	xmm0, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, x[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	xmm3, QWORD PTR [rdx+rax]
	movsd	QWORD PTR -56[rbp], xmm3
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	cos@PLT
	movq	rax, xmm0
	movq	xmm1, rax
	mulsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -56[rbp]
	subsd	xmm0, xmm1
	mov	eax, DWORD PTR -44[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -48[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rcx
	lea	rdx, 0[0+rax*8]
	lea	rax, y[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	nop
	leave
	ret
random:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	rcx, QWORD PTR seed[rip]
	movabs	rdx, 4730756183288445817
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax, 15
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 127773
	mov	rax, rcx
	sub	rax, rdx
	imul	rsi, rax, 16807
	mov	rcx, QWORD PTR seed[rip]
	movabs	rdx, 4730756183288445817
	mov	rax, rcx
	imul	rdx
	sar	rdx, 15
	mov	rax, rcx
	sar	rax, 63
	sub	rax, rdx
	imul	rax, rax, 2836
	add	rax, rsi
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	js	.L37
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR seed[rip], rax
	jmp	.L38
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 2147483647
	mov	QWORD PTR seed[rip], rax
	mov	rax, QWORD PTR seed[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	movsd	xmm0, QWORD PTR .LC8[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC9[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	cvttsd2si	eax, xmm0
	pop	rbp
	ret
0:
1:
2:
3:
4: