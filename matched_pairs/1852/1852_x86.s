main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	jmp	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	cmp	DWORD PTR -12[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -32[rbp]
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: