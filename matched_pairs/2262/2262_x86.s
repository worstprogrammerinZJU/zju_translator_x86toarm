prime:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 3
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L3
	mov	eax, 0
	jmp	.L4
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	cmp	DWORD PTR -20[rbp], eax
	jge	.L5
	mov	eax, 1
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L7
	mov	DWORD PTR -4[rbp], 3
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	prime
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	prime
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cmp	DWORD PTR -4[rbp], eax
	jle	.L11
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: