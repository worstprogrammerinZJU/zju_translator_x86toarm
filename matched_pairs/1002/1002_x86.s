main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -12[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	lea	rax, -60[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	cmp	BYTE PTR -41[rbp], 47
	jle	.L4
	cmp	BYTE PTR -41[rbp], 57
	jg	.L4
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	movsx	eax, BYTE PTR -41[rbp]
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	cmp	BYTE PTR -41[rbp], 64
	jle	.L5
	cmp	BYTE PTR -41[rbp], 80
	jg	.L5
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	esi, eax
	movsx	eax, BYTE PTR -41[rbp]
	sub	eax, 65
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, esi
	add	eax, 2
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	cmp	BYTE PTR -41[rbp], 81
	jle	.L3
	cmp	BYTE PTR -41[rbp], 89
	jg	.L3
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	esi, eax
	movsx	eax, BYTE PTR -41[rbp]
	sub	eax, 81
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	eax, esi
	add	eax, 7
	mov	DWORD PTR -8[rbp], eax
	call	getchar@PLT
	mov	BYTE PTR -41[rbp], al
	cmp	BYTE PTR -41[rbp], 10
	jne	.L6
	cmp	QWORD PTR -24[rbp], 0
	jne	.L7
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], 0
	jmp	.L8
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L9
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L10
	mov	DWORD PTR -12[rbp], 1
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR 4[rax], edx
	jmp	.L11
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L12
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -32[rbp], rax
	jmp	.L9
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	cmp	QWORD PTR -32[rbp], 0
	jne	.L13
	cmp	QWORD PTR -32[rbp], 0
	jne	.L8
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L14
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L8
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L15
	cmp	DWORD PTR -12[rbp], 0
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	dfs
	mov	eax, 0
	leave
	ret
dfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	je	.L23
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	dfs
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	test	eax, eax
	jle	.L22
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	ecx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	movsx	rax, edx
	imul	rax, rax, 1759218605
	shr	rax, 32
	sar	eax, 12
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	imul	esi, eax, 10000
	mov	eax, edx
	sub	eax, esi
	mov	rdx, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rdx]
	movsx	rsi, edx
	imul	rsi, rsi, 1759218605
	shr	rsi, 32
	sar	esi, 12
	sar	edx, 31
	sub	esi, edx
	mov	edx, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	rdi, rax
	call	dfs
	jmp	.L19
	nop
	leave
	ret
0:
1:
2:
3:
4: