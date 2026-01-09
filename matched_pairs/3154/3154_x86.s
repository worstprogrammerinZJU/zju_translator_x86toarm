n:
m:
x:
y:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	lea	rax, m[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR m[rip]
	mov	eax, DWORD PTR n[rip]
	add	eax, edx
	mov	DWORD PTR m[rip], eax
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR x[rip], xmm0
	mov	eax, DWORD PTR m[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR y[rip], xmm0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, DWORD PTR -4[rbp]
	movsd	xmm0, QWORD PTR x[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR y[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	cvttsd2si	eax, xmm0
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	addsd	xmm0, xmm0
	cvttsd2si	eax, xmm0
	cmp	eax, 1
	jne	.L3
	movsd	xmm0, QWORD PTR .LC3[rip]
	subsd	xmm0, QWORD PTR -24[rbp]
	movsd	xmm1, QWORD PTR -16[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L4
	movsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	movsd	xmm0, QWORD PTR y[rip]
	mulsd	xmm0, QWORD PTR -16[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: