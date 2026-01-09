main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -12[rbp], -1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	cmp	DWORD PTR -12[rbp], eax
	jge	.L4
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L5
	cmp	DWORD PTR -12[rbp], 8
	jg	.L6
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
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
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: