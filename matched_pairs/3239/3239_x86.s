main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	mov	esi, ecx
	sar	esi, 31
	mov	edx, eax
	sub	edx, esi
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 2
	je	.L3
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rax, ecx
	imul	rax, rax, 715827883
	shr	rax, 32
	mov	esi, ecx
	sar	esi, 31
	mov	edx, eax
	sub	edx, esi
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 3
	je	.L3
	mov	DWORD PTR -4[rbp], 2
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L5
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	edi, 10
	call	putchar@PLT
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L9
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L10
	mov	eax, DWORD PTR -8[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L11
	mov	DWORD PTR -4[rbp], 2
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L13
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 3
	mov	DWORD PTR -4[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	mov	DWORD PTR -4[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jle	.L17
	jmp	.L18
	mov	DWORD PTR -4[rbp], 1
	jmp	.L19
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L20
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 3
	mov	DWORD PTR -4[rbp], eax
	jmp	.L21
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L22
	mov	DWORD PTR -4[rbp], 2
	jmp	.L23
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jle	.L24
	mov	edi, 10
	call	putchar@PLT
	jmp	.L2
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L25
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L26
	mov	eax, DWORD PTR -8[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L27
	mov	DWORD PTR -4[rbp], 2
	jmp	.L28
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L29
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 3
	mov	DWORD PTR -4[rbp], eax
	jmp	.L30
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L31
	mov	DWORD PTR -4[rbp], 1
	jmp	.L32
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jle	.L33
	jmp	.L34
	mov	DWORD PTR -4[rbp], 1
	jmp	.L35
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L36
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 3
	mov	DWORD PTR -4[rbp], eax
	jmp	.L37
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L38
	mov	DWORD PTR -4[rbp], 2
	jmp	.L39
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 2
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jle	.L40
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L41
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: