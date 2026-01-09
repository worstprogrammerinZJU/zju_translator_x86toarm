main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L2
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	imul	edx, eax, -11
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	neg	eax
	mov	edx, DWORD PTR -12[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	je	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 3
	jne	.L4
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 5
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 2
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 3
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 6
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jne	.L3
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 5
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 7
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jle	.L6
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 954437177
	shr	rdx, 32
	sar	edx
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	movsx	rax, edx
	imul	rax, rax, 954437177
	shr	rax, 32
	sar	eax
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 3
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	je	.L6
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 9
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 0[0+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 954437177
	shr	rdx, 32
	sar	edx, 3
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	DWORD PTR -4[rbp], eax
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rax, ecx
	imul	rax, rax, 954437177
	shr	rax, 32
	sar	eax, 3
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	sal	eax, 2
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR -8[rbp], edx
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	je	.L7
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	r8, -24[rbp]
	lea	rdi, -20[rbp]
	lea	rcx, -16[rbp]
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	sub	rsp, 8
	lea	rsi, -28[rbp]
	push	rsi
	mov	r9, r8
	mov	r8, rdi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	rsp, 16
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	test	eax, eax
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: