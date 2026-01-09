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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rdx, -28[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, DWORD PTR -24[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -24[rbp]
	imul	eax, DWORD PTR -16[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -28[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, DWORD PTR -28[rbp]
	cdq
	idiv	edi
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	add	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, DWORD PTR -16[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	je	.L5
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	jne	.L6
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, 1
	jne	.L7
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	add	DWORD PTR -12[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, 1
	add	DWORD PTR -8[rbp], eax
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
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