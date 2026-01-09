main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	mov	BYTE PTR -28[rbp], 0
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -16[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -48[rbp+rax], dl
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L4
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 1
	jne	.L6
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	test	al, al
	je	.L17
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jg	.L8
	jmp	.L7
	nop
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cdqe
	mov	BYTE PTR -48[rbp+rax], 1
	sub	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -48[rbp+rax], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L10
	jmp	.L11
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	mov	BYTE PTR -48[rbp+rax], 0
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L12
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L13
	sal	DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	movsx	eax, al
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	BYTE PTR -48[rbp+rax], 0
	sub	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 0
	jns	.L14
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L15
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: