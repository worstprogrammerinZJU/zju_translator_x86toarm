main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 208
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L2
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	jmp	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 69
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 90
	jg	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	movsx	eax, al
	sub	eax, 5
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 64
	jle	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	cmp	al, 69
	jg	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	movsx	eax, al
	add	eax, 21
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -208[rbp+rax]
	test	al, al
	jne	.L8
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -208[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -208[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: