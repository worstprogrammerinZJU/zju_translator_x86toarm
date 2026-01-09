main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	lea	rdx, -12[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sub	eax, DWORD PTR -8[rbp]
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
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR -20[rbp]
	test	eax, eax
	je	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	test	eax, eax
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: