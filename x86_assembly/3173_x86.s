make:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 954437177
	shr	rax, 32
	sar	eax
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 3
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L2
	mov	eax, 9
	jmp	.L3
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 954437177
	shr	rax, 32
	sar	eax
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	mov	ecx, eax
	sal	ecx, 3
	add	ecx, eax
	mov	eax, edx
	sub	eax, ecx
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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L7
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	add	eax, 1
	mov	edi, eax
	call	make
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	edi, eax
	call	make
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	add	eax, 1
	mov	edi, eax
	call	make
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: