main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 432
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L3
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 1
	jne	.L5
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, DWORD PTR -20[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -432[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -432[rbp]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L6
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -432[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -432[rbp+rax*4]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jne	.L7
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L14
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 99
	jle	.L9
	jmp	.L8
	nop
	mov	DWORD PTR -24[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L11
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: