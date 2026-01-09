main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -16[rbp]
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 2
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 2
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jl	.L5
	cmp	DWORD PTR -8[rbp], 0
	je	.L5
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: