main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -40[rbp], 9
	mov	DWORD PTR -36[rbp], 3
	mov	DWORD PTR -32[rbp], 7
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -16[rbp], 0
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	test	al, al
	jne	.L4
	sub	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 63
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	mov	DWORD PTR -24[rbp], eax
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	mov	eax, DWORD PTR -40[rbp+rax*4]
	imul	eax, ecx
	add	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -12[rbp], 3
	jne	.L8
	mov	DWORD PTR -12[rbp], 0
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L9
	mov	edx, DWORD PTR -16[rbp]
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
	cmp	DWORD PTR -16[rbp], 0
	jne	.L10
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	BYTE PTR -48[rbp+rax], 48
	jmp	.L11
	mov	eax, 10
	sub	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L12
	add	DWORD PTR -16[rbp], 10
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	ecx, DWORD PTR -40[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	edi, DWORD PTR -40[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	edi
	add	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	BYTE PTR -48[rbp+rax], dl
	lea	rdx, -48[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L14
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: