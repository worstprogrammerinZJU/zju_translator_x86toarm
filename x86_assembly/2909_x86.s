main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 2944
	mov	DWORD PTR -16[rbp], 1
	lea	rdx, -7040[rbp]
	mov	eax, 0
	mov	ecx, 876
	mov	rdi, rdx
	rep stosq
	mov	WORD PTR -7040[rbp], 3
	mov	DWORD PTR -4[rbp], 5
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, WORD PTR -7040[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L21
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L6
	jmp	.L5
	nop
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jne	.L7
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	edx, DWORD PTR -4[rbp]
	cdqe
	mov	WORD PTR -7040[rbp+rax*2], dx
	add	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -4[rbp], 32678
	jle	.L8
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L9
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 4
	jne	.L10
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L11
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -7040[rbp+rax*2]
	movsx	ecx, ax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L13
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movzx	eax, WORD PTR -7040[rbp+rax*2]
	cwde
	cmp	DWORD PTR -24[rbp], eax
	jle	.L14
	mov	eax, DWORD PTR -28[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L13
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movzx	eax, WORD PTR -7040[rbp+rax*2]
	cwde
	cmp	DWORD PTR -24[rbp], eax
	jge	.L15
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L13
	add	DWORD PTR -20[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L17
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, WORD PTR -7040[rbp+rax*2]
	cwde
	lea	edx, [rax+rax]
	mov	eax, DWORD PTR -32[rbp]
	cmp	edx, eax
	jle	.L18
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jne	.L19
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: