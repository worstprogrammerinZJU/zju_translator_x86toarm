main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 1
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L3
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	mov	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L3
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, eax
	cmp	edx, eax
	jle	.L4
	mov	DWORD PTR -4[rbp], 3
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, eax
	cmp	edx, eax
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
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