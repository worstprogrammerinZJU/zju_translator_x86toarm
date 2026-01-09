main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 208
	lea	rdx, -128[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 64
	jle	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 90
	jg	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -128[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	test	al, al
	jne	.L5
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 3
	jle	.L6
	mov	eax, DWORD PTR -128[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 25
	jle	.L9
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	mov	DWORD PTR -12[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L12
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L13
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 24
	jle	.L14
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	DWORD PTR -4[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L16
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L17
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 65
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 24
	jle	.L19
	lea	rax, .LC5[rip]
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