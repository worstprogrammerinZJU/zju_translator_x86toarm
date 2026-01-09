main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], -1001
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -24[rbp], -1001
	mov	DWORD PTR -28[rbp], -1001
	mov	DWORD PTR -20[rbp], 0
	jmp	.L3
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jge	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	add	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -16[rbp], 0
	jle	.L6
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L7
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jg	.L9
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L10
	cmp	DWORD PTR -4[rbp], 0
	je	.L11
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L12
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: