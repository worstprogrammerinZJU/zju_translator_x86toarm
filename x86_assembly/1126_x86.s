str:
sentence:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 111
	jle	.L2
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jg	.L2
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 78
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	sentence
	jmp	.L3
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 67
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 68
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 69
	je	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 73
	jne	.L6
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edi, eax
	call	sentence
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	js	.L7
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	sentence
	jmp	.L3
	mov	eax, -1
	jmp	.L3
	mov	eax, -1
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L9
	mov	edi, 0
	call	sentence
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jle	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	test	al, al
	jne	.L10
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: