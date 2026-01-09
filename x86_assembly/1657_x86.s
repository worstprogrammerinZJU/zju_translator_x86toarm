main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L2
	lea	rdx, -38[rbp]
	lea	rax, -35[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	edx, BYTE PTR -35[rbp]
	movzx	eax, BYTE PTR -38[rbp]
	cmp	dl, al
	jle	.L3
	movzx	eax, BYTE PTR -35[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -38[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	jmp	.L4
	movzx	eax, BYTE PTR -38[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -35[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	movzx	edx, BYTE PTR -34[rbp]
	movzx	eax, BYTE PTR -37[rbp]
	cmp	dl, al
	jle	.L5
	movzx	eax, BYTE PTR -34[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -37[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
	jmp	.L6
	movzx	eax, BYTE PTR -37[rbp]
	movsx	eax, al
	movzx	edx, BYTE PTR -34[rbp]
	movsx	edx, dl
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR -28[rbp], eax
	cmp	DWORD PTR -20[rbp], 0
	jne	.L7
	cmp	DWORD PTR -24[rbp], 0
	jne	.L7
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	and	eax, 1
	test	eax, eax
	je	.L9
	mov	DWORD PTR -12[rbp], -1
	mov	DWORD PTR -4[rbp], 2
	jmp	.L10
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L11
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L10
	mov	DWORD PTR -12[rbp], 2
	mov	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -20[rbp], 0
	je	.L12
	cmp	DWORD PTR -24[rbp], 0
	jne	.L13
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L8
	mov	DWORD PTR -8[rbp], 2
	mov	ecx, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	cmp	DWORD PTR -12[rbp], -1
	jne	.L14
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L15
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L16
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: