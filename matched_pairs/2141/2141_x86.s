main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	sub	eax, 97
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -32[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 25
	jle	.L3
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 96
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 122
	jg	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	movsx	eax, al
	add	eax, 97
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 64
	jle	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 90
	jg	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	movsx	eax, al
	add	eax, 65
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L8
	lea	rax, .LC1[rip]
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