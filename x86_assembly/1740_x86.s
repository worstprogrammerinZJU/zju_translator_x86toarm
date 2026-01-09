main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -112[rbp+rax*4], 1
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp+rax*4]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -112[rbp+rax*4], edx
	jmp	.L6
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L7
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jne	.L8
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	mov	edx, DWORD PTR -20[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	and	eax, 1
	test	eax, eax
	je	.L11
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L12
	cmp	DWORD PTR -8[rbp], 0
	jne	.L13
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L15
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: