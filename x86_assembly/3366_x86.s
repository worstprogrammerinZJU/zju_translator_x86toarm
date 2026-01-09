L:
N:
irregularWord:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, N[rip]
	mov	rdx, rax
	lea	rax, L[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 2
	lea	rdx, 30[rax]
	lea	rax, irregularWord[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	sal	rax, 2
	lea	rcx, irregularWord[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR L[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 2
	lea	rdx, irregularWord[rip]
	add	rdx, rax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L18
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR L[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR L[rip]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 2
	lea	rdx, 30[rax]
	lea	rax, irregularWord[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	test	al, al
	jne	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 121
	jne	.L13
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 97
	je	.L13
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 101
	je	.L13
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 105
	je	.L13
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 111
	je	.L13
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 117
	je	.L13
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 111
	je	.L14
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 115
	je	.L14
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 120
	je	.L14
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 104
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 99
	je	.L14
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 115
	jne	.L15
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: