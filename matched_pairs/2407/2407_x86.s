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
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	DWORD PTR -8[rbp], 1
	jmp	.L5
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 3
	jmp	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	sub	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L8
	add	DWORD PTR -12[rbp], 2
	cmp	DWORD PTR -16[rbp], 1
	jg	.L9
	cmp	DWORD PTR -8[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 1
	je	.L10
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: