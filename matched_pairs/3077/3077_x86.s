main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	mov	BYTE PTR -17[rbp], al
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	edx, BYTE PTR -128[rbp+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -128[rbp+rax], dl
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	edx, BYTE PTR -17[rbp]
	mov	BYTE PTR -128[rbp+rax], dl
	add	DWORD PTR -8[rbp], 1
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L4
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 52
	jle	.L6
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	movsx	rdx, eax
	movzx	edx, BYTE PTR -128[rbp+rdx]
	add	edx, 1
	cdqe
	mov	BYTE PTR -128[rbp+rax], dl
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -128[rbp+rax], 48
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	cmp	al, 58
	jne	.L8
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L9
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 2
	mov	DWORD PTR -8[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -128[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jns	.L11
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
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