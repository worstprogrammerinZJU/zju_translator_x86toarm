main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	cmovle	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	cmp	eax, 1
	jg	.L12
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -12[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L6
	jmp	.L5
	nop
	cmp	DWORD PTR -4[rbp], 1
	jne	.L7
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L8
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: