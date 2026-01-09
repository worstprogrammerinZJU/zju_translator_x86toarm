x:
y:
z:
n:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	r8, n[rip]
	lea	rax, z[rip]
	mov	rcx, rax
	lea	rax, y[rip]
	mov	rdx, rax
	lea	rax, x[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR x[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR n[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	edx, DWORD PTR z[rip]
	mov	ecx, DWORD PTR y[rip]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movapd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR -16[rbp]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR -4[rbp]
	mulsd	xmm0, QWORD PTR -16[rbp]
	movq	rax, xmm0
	mov	esi, ecx
	movq	xmm0, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 2
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: