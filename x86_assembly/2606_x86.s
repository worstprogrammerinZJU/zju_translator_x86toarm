main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1632
	mov	DWORD PTR -20[rbp], 2
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -1632[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	lea	rcx, -832[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	DWORD PTR -16[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -832[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	ecx, DWORD PTR -832[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -1632[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	ecx, DWORD PTR -1632[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -832[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	ecx, DWORD PTR -832[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	imul	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	ecx, DWORD PTR -1632[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	esi, DWORD PTR -1632[rbp+rax*4]
	mov	eax, ecx
	sub	eax, esi
	imul	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jne	.L7
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jle	.L9
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, DWORD PTR -20[rbp]
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