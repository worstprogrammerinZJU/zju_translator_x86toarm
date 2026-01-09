f:
r:
q:
front:
rear:
ratio:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -32[rbp]
	movsd	xmm0, QWORD PTR [rax]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L9
	mov	eax, -1
	jmp	.L4
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L10
	mov	eax, 1
	jmp	.L4
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L12
	lea	rax, r[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, front[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, rear[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR r[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	mov	DWORD PTR q[rip], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, front[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, rear[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR q[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR q[rip], edx
	divsd	xmm0, xmm1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	QWORD PTR [rdx+rax], xmm0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR r[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR f[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR q[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rsi, rax
	lea	rax, ratio[rip]
	mov	rdi, rax
	call	qsort@PLT
	pxor	xmm0, xmm0
	movsd	QWORD PTR -16[rbp], xmm0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	divsd	xmm0, xmm1
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L22
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm0, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, ratio[rip]
	movsd	xmm1, QWORD PTR [rdx+rax]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR q[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	lea	rax, f[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR f[rip]
	test	eax, eax
	jne	.L25
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: