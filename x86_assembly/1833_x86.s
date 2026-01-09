main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 48
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rdx, -40[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -4144[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	DWORD PTR -12[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4144[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -4144[rbp+rax*4]
	cmp	edx, eax
	jl	.L22
	sub	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	jg	.L9
	jmp	.L8
	nop
	cmp	DWORD PTR -16[rbp], 0
	je	.L10
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	mov	DWORD PTR -20[rbp], eax
	jmp	.L11
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4144[rbp+rax*4]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -4144[rbp+rax*4]
	cmp	edx, eax
	jl	.L23
	sub	DWORD PTR -20[rbp], 1
	cmp	DWORD PTR -20[rbp], 0
	jns	.L14
	jmp	.L13
	nop
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -4144[rbp+rax*4]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	edx, DWORD PTR -4144[rbp+rax*4]
	movsx	rax, ecx
	mov	DWORD PTR -4144[rbp+rax*4], edx
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	edx, DWORD PTR -28[rbp]
	mov	DWORD PTR -4144[rbp+rax*4], edx
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L15
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -4144[rbp+rax*4]
	mov	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -4144[rbp+rax*4]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	DWORD PTR -4144[rbp+rax*4], edx
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -28[rbp]
	mov	DWORD PTR -4144[rbp+rax*4], edx
	add	DWORD PTR -24[rbp], 1
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -24[rbp], eax
	jl	.L16
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4144[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -4144[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L20
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: