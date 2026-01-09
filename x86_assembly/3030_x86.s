main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jne	.L3
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jge	.L5
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: