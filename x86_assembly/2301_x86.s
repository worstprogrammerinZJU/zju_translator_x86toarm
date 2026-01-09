main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -16[rbp]
	sub	eax, edx
	test	eax, eax
	js	.L3
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L4
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -16[rbp]
	sub	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	ecx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, ecx
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	mov	esi, eax
	lea	rax, .LC3[rip]
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