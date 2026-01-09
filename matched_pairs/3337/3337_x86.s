str:
letter:
flag:
ch:
sym:
lexer:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L4
	mov	eax, -1
	jmp	.L3
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 32
	je	.L5
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 96
	jle	.L6
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jg	.L6
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR ch[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR ch[rip], edx
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movsx	eax, al
	sub	eax, 97
	jmp	.L3
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 43
	jne	.L7
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 43
	jne	.L8
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, 26
	jmp	.L3
	mov	eax, 28
	jmp	.L3
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 45
	jne	.L9
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, DWORD PTR ch[rip]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 45
	jne	.L10
	mov	eax, DWORD PTR ch[rip]
	add	eax, 1
	mov	DWORD PTR ch[rip], eax
	mov	eax, 27
	jmp	.L3
	mov	eax, 29
	jmp	.L3
	mov	eax, -1
	pop	rbp
	ret
factor:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 26
	jne	.L12
	mov	eax, 0
	call	lexer
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	jmp	.L11
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 27
	jne	.L14
	mov	eax, 0
	call	lexer
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	jmp	.L11
	mov	eax, DWORD PTR sym[rip]
	test	eax, eax
	js	.L15
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 25
	jg	.L15
	mov	eax, DWORD PTR sym[rip]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 26
	jne	.L16
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L17
	mov	eax, DWORD PTR sym[rip]
	cmp	eax, 27
	jne	.L17
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L11
	leave
	ret
expression:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	eax, 0
	call	factor
	mov	DWORD PTR -4[rbp], eax
	jmp	.L19
	mov	eax, DWORD PTR sym[rip]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, 0
	call	factor
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -8[rbp], 28
	jne	.L20
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -4[rbp], eax
	jmp	.L19
	cmp	DWORD PTR -8[rbp], 29
	jne	.L19
	mov	eax, DWORD PTR -12[rbp]
	sub	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR sym[rip]
	test	eax, eax
	jns	.L21
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L24
	lea	rax, str[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 25
	jle	.L26
	mov	DWORD PTR ch[rip], 0
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	call	lexer
	mov	DWORD PTR sym[rip], eax
	mov	eax, 0
	call	expression
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L27
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, flag[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L28
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, letter[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 25
	jle	.L29
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: