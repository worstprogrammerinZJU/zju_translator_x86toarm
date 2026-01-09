main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	call	getchar@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	je	.L4
	cmp	DWORD PTR -8[rbp], -1
	jne	.L3
	neg	DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	call	getchar@PLT
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	add	rax, rsi
	sub	rax, 2016
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	add	rax, rcx
	sub	rax, 2016
	movzx	eax, BYTE PTR [rax]
	cmp	al, 10
	jne	.L5
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
	mov	DWORD PTR -12[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	add	rax, rcx
	sub	rax, 2016
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L8
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: