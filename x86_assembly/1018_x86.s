B:
P:
D:
device:
bandwidthOrder:
pointer:
_Z8priceCmpPKvS0_:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jge	.L2
	mov	eax, -1
	jmp	.L7
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, 1
	jmp	.L7
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jle	.L5
	mov	eax, -1
	jmp	.L7
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rax, device[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L9
	mov	eax, -1
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rax, device[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L11
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	mov	DWORD PTR B[rip], 0
	mov	DWORD PTR P[rip], 0
	mov	DWORD PTR -20[rbp], 0
	lea	rax, D[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L14
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, pointer[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	DWORD PTR -16[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip]
	add	rax, rdx
	lea	rdx, 4[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rax, device[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rdx, device[rip+8]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip+12]
	mov	BYTE PTR [rdx+rax], 0
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, bandwidthOrder[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L16
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR -28[rbp]
	movsx	rcx, ecx
	sub	rdx, rcx
	mov	rcx, rdx
	sal	rcx, 4
	lea	rdx, device[rip]
	lea	rdi, [rcx+rdx]
	mov	rcx, rdx
	mov	edx, 16
	mov	rsi, rax
	call	qsort@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -20[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR D[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, bandwidthOrder[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, bandwidthOrder[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip]
	lea	rdx, [rdx+rax]
	mov	rax, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, bandwidthOrder[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip+12]
	mov	BYTE PTR [rdx+rax], 1
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	sub	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR P[rip]
	test	eax, eax
	je	.L19
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	edx, eax
	mov	eax, DWORD PTR B[rip]
	imul	edx, eax
	mov	ecx, DWORD PTR -48[rbp]
	mov	eax, DWORD PTR P[rip]
	imul	eax, ecx
	cmp	edx, eax
	jge	.L21
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR P[rip], eax
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR B[rip], eax
	jmp	.L21
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, pointer[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip+12]
	movzx	eax, BYTE PTR [rdx+rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L22
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rax, device[rip+8]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	je	.L23
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rax, device[rip+8]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L29
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pointer[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, device[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -20[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	edx, DWORD PTR D[rip]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jle	.L26
	jmp	.L25
	nop
	mov	eax, DWORD PTR B[rip]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR P[rip]
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm0, xmm1
	movq	rax, xmm0
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L27
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: