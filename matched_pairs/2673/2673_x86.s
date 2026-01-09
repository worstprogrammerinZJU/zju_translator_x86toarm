main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -4[rbp], 1000000
	lea	rcx, -24[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -32[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	ecx, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L3
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L4
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	cmp	DWORD PTR -4[rbp], 0
	jg	.L6
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L8
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	DWORD PTR -8[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, ecx
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
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