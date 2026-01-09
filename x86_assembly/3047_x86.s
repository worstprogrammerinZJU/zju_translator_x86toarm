main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	DWORD PTR -80[rbp], 31
	mov	DWORD PTR -76[rbp], 28
	mov	DWORD PTR -72[rbp], 31
	mov	DWORD PTR -68[rbp], 30
	mov	DWORD PTR -64[rbp], 31
	mov	DWORD PTR -60[rbp], 30
	mov	DWORD PTR -56[rbp], 31
	mov	DWORD PTR -52[rbp], 31
	mov	DWORD PTR -48[rbp], 30
	mov	DWORD PTR -44[rbp], 31
	mov	DWORD PTR -40[rbp], 30
	mov	DWORD PTR -36[rbp], 31
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	imul	eax, eax, 365
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	sar	eax, 31
	sub	eax, edx
	add	ecx, eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 7
	sar	eax, 31
	mov	esi, eax
	mov	eax, edx
	sub	eax, esi
	add	eax, ecx
	add	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -80[rbp+rax*4]
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 2
	jle	.L4
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 3
	test	eax, eax
	jne	.L5
	mov	edx, DWORD PTR -12[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 5
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L6
	mov	edx, DWORD PTR -12[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 7
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 400
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L4
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	sar	edx, 2
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	sal	edx, 3
	sub	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], 6
	ja	.L7
	mov	eax, DWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, .L9[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L9[rip]
	add	rax, rdx
	notrack jmp	rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: