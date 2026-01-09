str:
qu:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 0
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 63
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR qu[rip], eax
	jmp	.L4
	mov	eax, 10
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, str[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	movsx	eax, al
	sub	eax, 48
	imul	eax, edx
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 8
	jle	.L5
	movzx	eax, BYTE PTR str[rip+9]
	cmp	al, 63
	jne	.L6
	mov	DWORD PTR qu[rip], 9
	jmp	.L7
	movzx	eax, BYTE PTR str[rip+9]
	cmp	al, 88
	jne	.L8
	add	DWORD PTR -8[rbp], 10
	jmp	.L7
	movzx	eax, BYTE PTR str[rip+9]
	movsx	eax, al
	sub	eax, 48
	add	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	edx, DWORD PTR qu[rip]
	mov	eax, 10
	sub	eax, edx
	imul	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, [rdx+rax]
	movsx	rax, ecx
	imul	rax, rax, 780903145
	shr	rax, 32
	sar	eax
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	eax, edx
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	je	.L17
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 9
	jle	.L12
	jmp	.L11
	nop
	cmp	DWORD PTR -4[rbp], 9
	jg	.L13
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 10[rax]
	movsx	rax, ecx
	imul	rax, rax, 780903145
	shr	rax, 32
	sar	eax
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	eax, edx
	sub	ecx, eax
	mov	edx, ecx
	test	edx, edx
	jne	.L15
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L14
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: