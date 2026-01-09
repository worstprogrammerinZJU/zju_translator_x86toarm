main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	mov	DWORD PTR -12[rbp], 0
	lea	rdx, -4016[rbp]
	lea	rax, -4020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -12[rbp], eax
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	edx, DWORD PTR [rax]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	eax, DWORD PTR [rax]
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	esi, DWORD PTR -4016[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	sub	ecx, 1
	movsx	rcx, ecx
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	edx, eax
	cmovge	eax, edx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	mov	DWORD PTR -4016[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L4
	lea	rdx, -4016[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	ecx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, 1
	sub	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -4[rbp]
	sub	edx, 1
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rcx
	mov	DWORD PTR -4016[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rbp
	sub	rax, 4016
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	mov	eax, DWORD PTR -4016[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: