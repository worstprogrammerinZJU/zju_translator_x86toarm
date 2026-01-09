main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	mov	eax, DWORD PTR -16[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 3
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	DWORD PTR -8[rbp], 2
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], 3
	jmp	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jne	.L8
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L9
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L11
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	lea	rax, .LC5[rip]
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
	jne	.L12
	lea	rax, .LC6[rip]
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