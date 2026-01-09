pow:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	pow
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L8
	mov	ecx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, ecx
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jle	.L9
	sub	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR -20[rbp]
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