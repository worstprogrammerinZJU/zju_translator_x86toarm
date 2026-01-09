cude:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	eax, DWORD PTR -36[rbp]
	imul	eax, eax
	mov	edx, DWORD PTR -36[rbp]
	imul	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	mov	edx, DWORD PTR -4[rbp]
	imul	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, eax
	imul	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jge	.L13
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, eax
	imul	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L7
	mov	esi, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -36[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jg	.L14
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L10
	jmp	.L9
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L11
	jmp	.L5
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	sub	eax, 2
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 6
	jmp	.L16
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	cude
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L17
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: