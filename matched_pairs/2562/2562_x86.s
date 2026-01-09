main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	edx, DWORD PTR -16[rbp]
	mov	ecx, edx
	mov	eax, 3435973837
	imul	rax, rcx
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 3
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	esi, DWORD PTR -12[rbp]
	mov	edx, esi
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	mov	edx, eax
	shr	edx, 3
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	esi, eax
	mov	edx, esi
	add	edx, ecx
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 9
	jle	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 3
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 3
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L5
	cmp	DWORD PTR -4[rbp], 0
	jne	.L6
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	cmp	DWORD PTR -4[rbp], 1
	jle	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR -12[rbp]
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