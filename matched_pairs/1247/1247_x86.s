main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	lea	rdx, -144[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L4
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 1
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -144[rbp+rax*4]
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, eax
	cmp	DWORD PTR -12[rbp], eax
	je	.L12
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jg	.L9
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
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