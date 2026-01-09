main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 224
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rcx, -224[rbp]
	lea	rdx, -8[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -224[rbp]
	cmp	al, 70
	jne	.L4
	mov	eax, DWORD PTR -8[rbp]
	add	eax, eax
	add	DWORD PTR -4[rbp], eax
	jmp	.L5
	movzx	eax, BYTE PTR -224[rbp]
	cmp	al, 66
	jne	.L6
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	add	DWORD PTR -4[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, 499
	jg	.L7
	add	DWORD PTR -4[rbp], 500
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -4[rbp], eax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -112[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -112[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: