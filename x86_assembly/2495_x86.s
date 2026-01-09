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
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rsi, -24[rbp]
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jne	.L3
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	DWORD PTR -12[rbp], 1
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: