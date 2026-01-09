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
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], -1
	mov	DWORD PTR -16[rbp], 100
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jle	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -16[rbp]
	add	eax, eax
	mov	esi, eax
	lea	rax, .LC1[rip]
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