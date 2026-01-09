main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, eax
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jg	.L4
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, edx
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: