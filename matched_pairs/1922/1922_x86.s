main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -12[rbp], 16200
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -8[rbp], 16201
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rdx, -24[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	js	.L4
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	edx, eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L4
	mov	ecx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	setne	al
	movzx	edx, al
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
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
	jne	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: