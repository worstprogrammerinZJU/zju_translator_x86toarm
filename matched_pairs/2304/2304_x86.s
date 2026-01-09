main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L3
	add	DWORD PTR -4[rbp], 40
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	sub	eax, edx
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jle	.L4
	add	DWORD PTR -4[rbp], 40
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	sub	eax, edx
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jge	.L5
	add	DWORD PTR -4[rbp], 40
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -20[rbp]
	sub	eax, edx
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	add	eax, 1080
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -20[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	je	.L7
	mov	eax, 1
	jmp	.L8
	mov	eax, 0
	test	eax, eax
	jne	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: