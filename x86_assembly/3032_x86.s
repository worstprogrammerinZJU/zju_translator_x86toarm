main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 160
	lea	rax, -148[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -152[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -144[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -152[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	DWORD PTR -24[rbp], 1
	mov	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -152[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -12[rbp], 1
	jmp	.L5
	mov	DWORD PTR -8[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -144[rbp+rax*4], edx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR -80[rbp+rax*4], edx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -152[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L8
	mov	DWORD PTR -8[rbp], 1
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -152[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L10
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -148[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: