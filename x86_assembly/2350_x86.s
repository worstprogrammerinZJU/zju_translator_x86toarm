main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1024
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -1024[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -1024[rbp+rax]
	movsx	eax, al
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	ecx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -1024[rbp+rax]
	movsx	eax, al
	cmp	DWORD PTR -12[rbp], eax
	jge	.L6
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L7
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movq	rax, xmm0
	mov	esi, 37
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: