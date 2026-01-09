main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -48[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3
	jle	.L4
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -48[rbp]
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	ecx, DWORD PTR -48[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -44[rbp]
	sub	eax, edx
	cmp	DWORD PTR -12[rbp], eax
	jne	.L5
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, DWORD PTR -40[rbp]
	sub	eax, edx
	cmp	DWORD PTR -12[rbp], eax
	jne	.L5
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: