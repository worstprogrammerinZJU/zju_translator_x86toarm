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
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L3
	mov	edx, DWORD PTR -12[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	sub	edx, eax
	mov	DWORD PTR -16[rbp], edx
	cmp	DWORD PTR -16[rbp], 4
	jle	.L4
	sub	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, DWORD PTR -16[rbp]
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -4[rbp]
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
	jne	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: