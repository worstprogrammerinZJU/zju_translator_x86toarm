main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 1
	jmp	.L2
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	add	eax, eax
	add	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -32[rbp]
	movsx	rax, edx
	imul	rax, rax, 1431655766
	shr	rax, 32
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	add	ecx, ecx
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	cmp	eax, 2
	jne	.L3
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L4
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	and	eax, 7
	test	eax, eax
	jne	.L5
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	and	eax, 7
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jne	.L10
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jg	.L12
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: