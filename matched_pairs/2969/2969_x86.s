main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1072
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -32[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	lea	rax, -1072[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -1072[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	movsx	rdx, eax
	mov	edx, DWORD PTR -64[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -1072[rbp+rax]
	test	al, al
	jne	.L3
	mov	eax, DWORD PTR -64[rbp]
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -44[rbp]
	test	eax, eax
	jne	.L4
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	eax, eax
	lea	ecx, [rdx+rax]
	mov	edx, DWORD PTR -52[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -48[rbp]
	sal	eax, 2
	lea	ecx, [rdx+rax]
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	ecx, eax
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	add	ecx, eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, edx
	sal	eax, 3
	sub	eax, edx
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -32[rbp]
	sal	eax, 3
	lea	ecx, [rdx+rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, edx
	sal	eax, 3
	add	eax, edx
	add	eax, ecx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	esi, eax
	sar	esi, 31
	mov	ecx, edx
	sub	ecx, esi
	mov	edx, ecx
	add	edx, edx
	add	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	test	eax, eax
	jne	.L6
	mov	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -24[rbp], 1
	jne	.L7
	mov	DWORD PTR -12[rbp], 1
	jmp	.L8
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	test	eax, eax
	jle	.L9
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx
	jmp	.L10
	add	DWORD PTR -12[rbp], 3
	cmp	DWORD PTR -12[rbp], 8
	jle	.L11
	cmp	DWORD PTR -12[rbp], 9
	jle	.L12
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, 1
	jle	.L13
	mov	eax, DWORD PTR -56[rbp]
	sub	eax, 2
	mov	DWORD PTR -56[rbp], eax
	jmp	.L12
	mov	eax, DWORD PTR -56[rbp]
	test	eax, eax
	jle	.L14
	mov	eax, DWORD PTR -56[rbp]
	sub	eax, 1
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L15
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -44[rbp], eax
	jmp	.L12
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jle	.L16
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	jmp	.L12
	mov	DWORD PTR -8[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -4[rbp]
	add	edx, 1
	cmp	eax, edx
	jle	.L17
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 2
	mov	DWORD PTR -44[rbp], eax
	jmp	.L12
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L18
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jle	.L19
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	jmp	.L12
	mov	DWORD PTR -8[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 1
	jle	.L20
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 2
	mov	DWORD PTR -32[rbp], eax
	jmp	.L12
	mov	DWORD PTR -8[rbp], 1
	jmp	.L12
	cmp	DWORD PTR -24[rbp], 2
	jne	.L12
	mov	eax, DWORD PTR -56[rbp]
	test	eax, eax
	jle	.L21
	mov	eax, DWORD PTR -56[rbp]
	sub	eax, 1
	mov	DWORD PTR -56[rbp], eax
	jmp	.L12
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L22
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -44[rbp], eax
	jmp	.L12
	mov	eax, DWORD PTR -32[rbp]
	test	eax, eax
	jle	.L23
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	jmp	.L12
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -16[rbp], 2
	jmp	.L24
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx
	sub	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	je	.L37
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	test	eax, eax
	jg	.L27
	jmp	.L26
	nop
	add	DWORD PTR -12[rbp], 3
	cmp	DWORD PTR -16[rbp], 0
	jle	.L28
	cmp	DWORD PTR -12[rbp], 8
	jle	.L25
	cmp	DWORD PTR -16[rbp], 0
	jle	.L12
	mov	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 1
	jne	.L30
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
	mov	edx, DWORD PTR -60[rbp]
	mov	eax, DWORD PTR -56[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -52[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -48[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -44[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -40[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -36[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	add	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	test	eax, eax
	jne	.L31
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L5
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -44[rbp], eax
	mov	DWORD PTR -12[rbp], 9
	jmp	.L32
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	mov	DWORD PTR -16[rbp], eax
	jmp	.L33
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	jg	.L34
	sub	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 0
	jns	.L35
	cmp	DWORD PTR -4[rbp], 1
	jne	.L5
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: