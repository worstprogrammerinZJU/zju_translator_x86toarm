pro:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L3
	sar	DWORD PTR -20[rbp]
	jmp	.L4
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, 1
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -20[rbp], 1
	jne	.L5
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L8
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jle	.L9
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	pro
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L11
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: