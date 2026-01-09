p:
q:
bowling:
cmp:
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
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L2
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L4
	mov	eax, -1
	jmp	.L3
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	lea	rdx, -32[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, bowling[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 4000
	lea	rcx, bowling[rip]
	lea	rdi, [rdx+rcx]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	call	qsort@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	edx, 400
	mov	esi, 0
	lea	rax, p[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 400
	mov	esi, 0
	lea	rax, q[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L12
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L14
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L14
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jg	.L14
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L15
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L16
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jne	.L17
	add	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -16[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	je	.L32
	jmp	.L21
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jge	.L22
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 1000
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, bowling[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L23
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	je	.L33
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L20
	nop
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L26
	jmp	.L25
	nop
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jne	.L27
	add	DWORD PTR -20[rbp], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L28
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L29
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: