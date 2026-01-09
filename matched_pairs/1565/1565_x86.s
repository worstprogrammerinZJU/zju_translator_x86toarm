main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	test	al, al
	jne	.L4
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	sal	DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	imul	eax, edx
	add	DWORD PTR -12[rbp], eax
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L6
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -48[rbp]
	cmp	al, 48
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: