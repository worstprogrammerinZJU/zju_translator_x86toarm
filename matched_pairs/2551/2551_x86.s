main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L3
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	ecx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -4[rbp], edx
	cmp	DWORD PTR -4[rbp], 0
	jne	.L4
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: