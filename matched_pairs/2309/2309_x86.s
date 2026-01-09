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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	sal	DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: