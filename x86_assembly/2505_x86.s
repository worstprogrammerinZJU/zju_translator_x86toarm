main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -12[rbp], 2
	mov	DWORD PTR -8[rbp], 9
	jmp	.L2
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -12[rbp+rdx*4]
	mov	ecx, edx
	mov	edx, 0
	div	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -12[rbp+rdx*4]
	mov	esi, edx
	mov	edx, 0
	div	esi
	mov	DWORD PTR -16[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -12[rbp+rdx*4]
	mov	ecx, edx
	mov	edx, 0
	div	ecx
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jne	.L6
	cmp	DWORD PTR -4[rbp], 0
	jne	.L7
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: