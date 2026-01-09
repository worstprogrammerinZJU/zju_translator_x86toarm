main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -32[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	call	getchar@PLT
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -96[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 10
	jle	.L5
	jmp	.L6
	lea	rax, -96[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	DWORD PTR -4[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L9
	jmp	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	test	eax, eax
	jne	.L10
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], 0
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 10
	jle	.L13
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L14
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: