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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	lea	rdx, -16[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 2
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	ecx, edx
	shr	ecx
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L4
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	edx, DWORD PTR -16[rbp]
	add	edx, edx
	cmp	eax, edx
	jbe	.L5
	mov	DWORD PTR -20[rbp], 3
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L7
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	edx, DWORD PTR -16[rbp]
	add	edx, edx
	cmp	eax, edx
	jbe	.L8
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: