tri:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], 3
	cmp	DWORD PTR -20[rbp], 1
	jne	.L2
	mov	eax, 3
	jmp	.L3
	mov	DWORD PTR -8[rbp], 1
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -12[rbp]
	add	eax, eax
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L5
	mov	eax, DWORD PTR -12[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L8
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jne	.L10
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edi, eax
	call	tri
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
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