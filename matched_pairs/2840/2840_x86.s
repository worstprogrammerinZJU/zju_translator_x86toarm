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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	lea	rax, -26[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -26[rbp+rax]
	movsx	eax, al
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -26[rbp+rax]
	cmp	al, 58
	jne	.L4
	add	DWORD PTR -8[rbp], 1
	jmp	.L5
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -26[rbp+rax]
	movsx	eax, al
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -26[rbp+rax]
	test	al, al
	jne	.L6
	cmp	DWORD PTR -16[rbp], 0
	jne	.L7
	add	DWORD PTR -12[rbp], 12
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 3
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	je	.L8
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 3
	sub	ecx, eax
	mov	edx, ecx
	jmp	.L9
	mov	edx, 24
	mov	esi, edx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: