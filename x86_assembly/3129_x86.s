star:
telescope:
sx:
sy:
sz:
tx:
ty:
tz:
r:
_Z4distdddddd:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	QWORD PTR -16[rbp], xmm1
	movsd	QWORD PTR -24[rbp], xmm2
	movsd	QWORD PTR -32[rbp], xmm3
	movsd	QWORD PTR -40[rbp], xmm4
	movsd	QWORD PTR -48[rbp], xmm5
	movsd	xmm0, QWORD PTR -8[rbp]
	movapd	xmm1, xmm0
	subsd	xmm1, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR -8[rbp]
	subsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR -16[rbp]
	subsd	xmm0, QWORD PTR -40[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	movapd	xmm2, xmm0
	subsd	xmm2, QWORD PTR -48[rbp]
	movsd	xmm0, QWORD PTR -24[rbp]
	subsd	xmm0, QWORD PTR -48[rbp]
	mulsd	xmm0, xmm2
	addsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
_Z4seeni:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -52[rbp], edi
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sz[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sy[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sx[rip]
	mov	rax, QWORD PTR [rdx+rax]
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	pxor	xmm3, xmm3
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	_Z4distdddddd
	movq	rax, xmm0
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, tz[rip]
	movsd	xmm4, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ty[rip]
	movsd	xmm3, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, tx[rip]
	movsd	xmm2, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sz[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sy[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sx[rip]
	mov	rax, QWORD PTR [rdx+rax]
	movapd	xmm5, xmm4
	movapd	xmm4, xmm3
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	_Z4distdddddd
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, tz[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ty[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, tx[rip]
	mov	rax, QWORD PTR [rdx+rax]
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	pxor	xmm3, xmm3
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	_Z4distdddddd
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -16[rbp]
	movapd	xmm1, xmm0
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	mulsd	xmm0, xmm0
	addsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm0
	subsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, xmm0
	mulsd	xmm0, QWORD PTR -32[rbp]
	divsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	acos@PLT
	movq	rax, xmm0
	mov	QWORD PTR -40[rbp], rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, r[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	comisd	xmm0, QWORD PTR -40[rbp]
	jbe	.L10
	mov	eax, 1
	jmp	.L7
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR telescope[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, 0
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, star[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L12
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sz[rip]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, sy[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rsi, 0[0+rax*8]
	lea	rax, sx[rip]
	add	rax, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR star[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	lea	rax, telescope[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, r[rip]
	lea	rsi, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, tz[rip]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ty[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdi, 0[0+rax*8]
	lea	rax, tx[rip]
	add	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR telescope[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z4seeni
	movzx	eax, al
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L18
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR star[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, star[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR star[rip]
	test	eax, eax
	jne	.L20
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: