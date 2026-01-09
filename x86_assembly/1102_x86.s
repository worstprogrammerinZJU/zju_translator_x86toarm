main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	movabs	rax, 3255307721878872109
	mov	QWORD PTR -64[rbp], rax
	mov	WORD PTR -56[rbp], 11565
	movabs	rax, 2318559055220383776
	mov	QWORD PTR -54[rbp], rax
	mov	WORD PTR -46[rbp], 11565
	movabs	rax, 2318558999385808941
	mov	QWORD PTR -44[rbp], rax
	mov	WORD PTR -36[rbp], 11565
	mov	WORD PTR -112[rbp], 31868
	mov	WORD PTR -110[rbp], 31776
	mov	WORD PTR -108[rbp], 31776
	mov	WORD PTR -106[rbp], 31776
	mov	WORD PTR -104[rbp], 31868
	mov	WORD PTR -102[rbp], 8316
	mov	WORD PTR -100[rbp], 8316
	mov	WORD PTR -98[rbp], 31776
	mov	WORD PTR -96[rbp], 31868
	mov	WORD PTR -94[rbp], 31868
	mov	WORD PTR -92[rbp], 31868
	mov	WORD PTR -90[rbp], 31776
	mov	WORD PTR -88[rbp], 8316
	mov	WORD PTR -86[rbp], 31776
	mov	WORD PTR -84[rbp], 31776
	mov	WORD PTR -82[rbp], 31776
	mov	WORD PTR -80[rbp], 31868
	mov	WORD PTR -78[rbp], 31776
	mov	WORD PTR -76[rbp], 31868
	mov	WORD PTR -74[rbp], 31776
	lea	rdx, -25[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -64[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	test	al, al
	jne	.L6
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax*2]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L9
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -111[rbp+rax*2]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	test	al, al
	jne	.L11
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L12
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -54[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L15
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	test	al, al
	jne	.L16
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L17
	mov	DWORD PTR -4[rbp], 0
	jmp	.L18
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	add	rax, 10
	movzx	eax, BYTE PTR -112[rbp+rax*2]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L19
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L20
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -91[rbp+rax*2]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	test	al, al
	jne	.L21
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L22
	mov	DWORD PTR -4[rbp], 0
	jmp	.L23
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L24
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	movzx	eax, BYTE PTR -44[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L25
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -25[rbp+rax]
	test	al, al
	jne	.L26
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -25[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L27
	movzx	eax, BYTE PTR -25[rbp]
	cmp	al, 48
	jne	.L27
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: