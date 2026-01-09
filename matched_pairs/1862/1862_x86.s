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
	mov	eax, 1
	jmp	.L4
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L10
	mov	eax, -1
	jmp	.L4
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 816
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	lea	rdx, -816[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	lea	rax, -816[rbp]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L14
	movsd	xmm1, QWORD PTR -816[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -816[rbp+rax*8]
	mulsd	xmm1, xmm0
	movq	rax, xmm1
	movq	xmm0, rax
	call	sqrt@PLT
	addsd	xmm0, xmm0
	movsd	QWORD PTR -816[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	rax, QWORD PTR -816[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
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