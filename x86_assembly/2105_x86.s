main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -96[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -32[rbp+rax*4], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 0[0+rax*8]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, ecx
	cdqe
	movzx	eax, BYTE PTR -96[rbp+rax]
	movsx	eax, al
	add	eax, edx
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -32[rbp+rax*4], edx
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 7
	jle	.L5
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3
	jle	.L6
	mov	esi, DWORD PTR -20[rbp]
	mov	ecx, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: