prime:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 2
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L4
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -20[rbp], 1
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	mov	edi, eax
	call	prime
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L8
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	mov	edi, eax
	call	prime
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L9
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: