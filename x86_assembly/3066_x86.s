A:
B:
re:
su:
lt:
r:
s:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -28[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	imul	eax, edx
	mov	edx, DWORD PTR -24[rbp]
	lea	edi, 1[rdx]
	cdq
	idiv	edi
	mov	DWORD PTR -8[rbp], eax
	mov	ecx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sub	DWORD PTR -8[rbp], eax
	mov	esi, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	esi
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -4[rbp], eax
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -4[rbp]
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR A[rip], xmm0
	movsd	xmm0, QWORD PTR A[rip]
	movsd	QWORD PTR B[rip], xmm0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR r[rip], xmm0
	movsd	xmm0, QWORD PTR r[rip]
	movsd	QWORD PTR re[rip], xmm0
	mov	eax, DWORD PTR -24[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR su[rip], xmm0
	movsd	xmm0, QWORD PTR su[rip]
	movsd	QWORD PTR s[rip], xmm0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	movsd	xmm1, QWORD PTR re[rip]
	movsd	xmm0, QWORD PTR r[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR re[rip], xmm0
	movsd	xmm1, QWORD PTR su[rip]
	movsd	xmm0, QWORD PTR s[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR su[rip], xmm0
	movsd	xmm1, QWORD PTR B[rip]
	movsd	xmm0, QWORD PTR A[rip]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR B[rip], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR re[rip]
	mulsd	xmm1, xmm0
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, DWORD PTR -12[rbp]
	movsd	xmm0, QWORD PTR su[rip]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR B[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR lt[rip], xmm0
	mov	rax, QWORD PTR lt[rip]
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rsi, -28[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
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