main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -8[rbp], 1
	lea	rsi, -24[rbp]
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, -1
	jne	.L2
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, -1
	je	.L8
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1307163959
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 23
	sub	eax, ecx
	mov	edx, eax
	imul	ecx, edx, 5544
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	sar	edx, 4
	mov	esi, eax
	sar	esi, 31
	sub	edx, esi
	imul	esi, edx, 28
	sub	eax, esi
	mov	edx, eax
	imul	eax, edx, 14421
	lea	esi, [rcx+rax]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rax, edx
	imul	rax, rax, 1041204193
	shr	rax, 32
	sar	eax, 3
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 5
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	imul	eax, eax, 1288
	lea	edx, [rsi+rax]
	movsx	rax, edx
	imul	rax, rax, 827789669
	shr	rax, 32
	sar	eax, 12
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 21252
	mov	eax, edx
	sub	eax, ecx
	mov	edx, DWORD PTR -24[rbp]
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jg	.L4
	add	DWORD PTR -4[rbp], 21252
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	jmp	.L5
	nop
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: