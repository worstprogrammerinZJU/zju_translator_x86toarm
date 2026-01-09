n:
x:
y:
h:
cost:
dist:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, h[rip]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	lea	rax, x[rip]
	add	rax, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	esi, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	edi, esi
	imul	edi, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, y[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	esi, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, y[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, y[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	imul	eax, esi
	add	eax, edi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -24[rbp], xmm0
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	mov	edx, DWORD PTR -8[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 1000
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, dist[rip]
	mov	QWORD PTR [rcx+rdx], rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dist[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dist[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, h[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, h[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L7
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	movq	xmm1, QWORD PTR .LC3[rip]
	xorpd	xmm0, xmm1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	call	_Z4primd
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, QWORD PTR -16[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	fabs@PLT
	movsd	xmm1, QWORD PTR .LC4[rip]
	comisd	xmm1, xmm0
	ja	.L18
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L14
	nop
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L15
	mov	eax, 0
	leave
	ret
_Z4primd:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 664
	movsd	QWORD PTR -13064[rbp], xmm0
	lea	rdx, -4048[rbp]
	mov	eax, 0
	mov	ecx, 500
	mov	rdi, rdx
	rep stosq
	lea	rdx, -5056[rbp]
	mov	eax, 0
	mov	ecx, 125
	mov	rdi, rdx
	rep stosq
	mov	BYTE PTR -5056[rbp], 1
	pxor	xmm0, xmm0
	movsd	QWORD PTR -32[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -40[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -13056[rbp], xmm0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L20
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 8000
	lea	rdx, cost[rip]
	movsd	xmm0, QWORD PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 8000
	lea	rdx, dist[rip]
	movsd	xmm1, QWORD PTR [rax+rdx]
	mulsd	xmm1, QWORD PTR -13064[rbp]
	subsd	xmm0, xmm1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movsd	QWORD PTR -13056[rbp+rax*8], xmm0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L21
	mov	DWORD PTR -4[rbp], 1
	jmp	.L22
	movsd	xmm0, QWORD PTR .LC6[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L23
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -5056[rbp+rax]
	movzx	eax, al
	test	eax, eax
	jne	.L24
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movsd	xmm1, QWORD PTR -13056[rbp+rax*8]
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, xmm1
	jbe	.L24
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -13056[rbp+rax*8]
	movsd	QWORD PTR -24[rbp], xmm0
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L26
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -5056[rbp+rax], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	movsd	xmm1, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -32[rbp], xmm0
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -4048[rbp+rax*4]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dist[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	movsd	xmm1, QWORD PTR -40[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -40[rbp], xmm0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L27
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -5056[rbp+rax]
	movzx	eax, al
	test	eax, eax
	jne	.L28
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, cost[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dist[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mulsd	xmm1, QWORD PTR -13064[rbp]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -48[rbp], xmm0
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -13056[rbp+rax*8]
	comisd	xmm0, QWORD PTR -48[rbp]
	seta	al
	test	al, al
	je	.L28
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	QWORD PTR -13056[rbp+rax*8], xmm0
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR -4048[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L29
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
	movsd	xmm0, QWORD PTR -32[rbp]
	divsd	xmm0, QWORD PTR -40[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
0:
1:
2:
3:
4: