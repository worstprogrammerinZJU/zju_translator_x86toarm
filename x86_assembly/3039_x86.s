n:
d:
r:
s:
t:
i:
min:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 8
	lea	rax, d[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR min[rip], xmm0
	mov	DWORD PTR i[rip], 1
	jmp	.L2
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR n[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, xmm1
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	movapd	xmm1, xmm0
	divsd	xmm1, xmm2
	movsd	xmm0, QWORD PTR .LC2[rip]
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	floor@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR r[rip], eax
	mov	edx, DWORD PTR r[rip]
	mov	eax, DWORD PTR d[rip]
	imul	edx, eax
	mov	ecx, DWORD PTR n[rip]
	mov	eax, DWORD PTR i[rip]
	imul	eax, ecx
	cmp	edx, eax
	jne	.L3
	mov	eax, DWORD PTR r[rip]
	add	eax, 1
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movq	rbx, xmm0
	mov	eax, DWORD PTR r[rip]
	sub	eax, 1
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movq	xmm3, rbx
	comisd	xmm3, xmm0
	jbe	.L12
	mov	eax, DWORD PTR r[rip]
	add	eax, 1
	mov	DWORD PTR r[rip], eax
	jmp	.L3
	mov	eax, DWORD PTR r[rip]
	sub	eax, 1
	mov	DWORD PTR r[rip], eax
	mov	eax, DWORD PTR r[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movsd	xmm1, QWORD PTR min[rip]
	comisd	xmm1, xmm0
	jbe	.L6
	mov	eax, DWORD PTR r[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR i[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	mov	eax, DWORD PTR d[rip]
	pxor	xmm2, xmm2
	cvtsi2sd	xmm2, eax
	divsd	xmm1, xmm2
	subsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movq	rax, xmm0
	mov	QWORD PTR min[rip], rax
	mov	eax, DWORD PTR r[rip]
	mov	DWORD PTR t[rip], eax
	mov	eax, DWORD PTR i[rip]
	mov	DWORD PTR s[rip], eax
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
	mov	eax, DWORD PTR i[rip]
	cmp	eax, 32767
	jle	.L8
	mov	edx, DWORD PTR s[rip]
	mov	eax, DWORD PTR t[rip]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: