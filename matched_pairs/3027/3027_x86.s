base:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	eax, edx
	imul	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jg	.L3
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	DWORD PTR -20[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L4
	mov	eax, 1
	jmp	.L5
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	lea	rsi, -28[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	mov	edx, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	base
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L10
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jg	.L11
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L12
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: