main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -240[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -448[rbp]
	mov	edx, 200
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 48
	je	.L4
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L5
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	test	al, al
	jne	.L6
	sub	DWORD PTR -12[rbp], 1
	jmp	.L7
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L8
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 48
	je	.L9
	mov	DWORD PTR -16[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	movsx	rdx, eax
	movzx	edx, BYTE PTR -448[rbp+rdx]
	mov	ecx, edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -128[rbp+rdx]
	add	edx, ecx
	sub	edx, 48
	cdqe
	mov	BYTE PTR -448[rbp+rax], dl
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L11
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -240[rbp+rax]
	cmp	al, 48
	je	.L13
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L14
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -240[rbp+rax]
	test	al, al
	jne	.L15
	sub	DWORD PTR -12[rbp], 1
	jmp	.L16
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -240[rbp+rax]
	cmp	al, 48
	je	.L18
	mov	DWORD PTR -16[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	movzx	eax, BYTE PTR -448[rbp+rax]
	mov	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -240[rbp+rax]
	add	eax, edx
	sub	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -448[rbp+rax], dl
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], eax
	jmp	.L20
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	movsx	rdx, eax
	movzx	edx, BYTE PTR -448[rbp+rdx]
	sub	edx, 10
	cdqe
	mov	BYTE PTR -448[rbp+rax], dl
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, BYTE PTR -448[rbp+rax]
	add	eax, 1
	mov	edx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	BYTE PTR -448[rbp+rax], dl
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	movzx	eax, BYTE PTR -448[rbp+rax]
	cmp	al, 9
	jg	.L21
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L22
	mov	DWORD PTR -8[rbp], 199
	jmp	.L23
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -448[rbp+rax]
	test	al, al
	je	.L24
	mov	DWORD PTR -12[rbp], 0
	jmp	.L25
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -448[rbp+rax]
	test	al, al
	je	.L26
	jmp	.L27
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -448[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L28
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L29
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: